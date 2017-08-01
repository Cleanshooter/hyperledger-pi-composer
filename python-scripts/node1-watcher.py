import time
import RPi.GPIO as GPIO
from watchdog.observers import Observer
from watchdog.events import PatternMatchingEventHandler


class MyHandler(PatternMatchingEventHandler):
    patterns = ["*/peer0org1log.txt", "*/peer1org1log.txt"]
    def on_modified(self, event):
        if event.src_path.endswith("peer0org1log.txt"):
            GPIO.output(18,GPIO.HIGH)
            time.sleep(0.05)
            GPIO.output(18,GPIO.LOW)
        if event.src_path.endswith("peer1org1log.txt"):
            GPIO.output(5,GPIO.HIGH)
            time.sleep(0.05)
            GPIO.output(5,GPIO.LOW)


if __name__ == "__main__":
    GPIO.setmode(GPIO.BCM)
    GPIO.setwarnings(False)
    GPIO.setup(18,GPIO.OUT) # Peer 0 Green
    GPIO.setup(17,GPIO.OUT) # Peer 0 Amber
    GPIO.setup(27,GPIO.OUT) # Peer 0 Red
    GPIO.setup(5,GPIO.OUT) # Peer 1 Green
    GPIO.setup(6,GPIO.OUT) # Peer 1 Amber
    event_handler = MyHandler()
    observer = Observer()
    observer.schedule(event_handler, path='/home/jmotacek/hyperledger-pi-composer/logs/', recursive=False)
    observer.start()

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        GPIO.output(18,GPIO.LOW)
        GPIO.output(17,GPIO.LOW)
        GPIO.output(27,GPIO.LOW)
        observer.stop()
    observer.join()