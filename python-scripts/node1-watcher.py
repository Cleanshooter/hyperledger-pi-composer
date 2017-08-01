import time
import RPi.GPIO as GPIO
from watchdog.observers import Observer
from watchdog.events import PatternMatchingEventHandler


class MyHandler(PatternMatchingEventHandler):
    patterns = ["*/peer0org1log.txt"]
    def on_modified(self, event):
        # print "LED on"
        GPIO.output(18,GPIO.HIGH)
        time.sleep(0.1)
        # print "LED off"
        GPIO.output(18,GPIO.LOW)


if __name__ == "__main__":
    GPIO.setmode(GPIO.BCM)
    GPIO.setwarnings(False)
    GPIO.setup(18,GPIO.OUT)
    event_handler = MyHandler()
    observer = Observer()
    observer.schedule(event_handler, path='/home/jmotacek/hyperledger-pi-composer/logs/', recursive=False)
    observer.start()

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()