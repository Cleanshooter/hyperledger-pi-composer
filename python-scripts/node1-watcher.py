import time
import RPi.GPIO as GPIO
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler


class MyHandler(FileSystemEventHandler):
    def on_modified(self, event):
        GPIO.setup(18,GPIO.OUT)
        # print "LED on"
        GPIO.output(18,GPIO.HIGH)
        time.sleep(0.1)
        # print "LED off"
        GPIO.output(18,GPIO.LOW)


if __name__ == "__main__":
    GPIO.setmode(GPIO.BCM)
    GPIO.setwarnings(False)
    event_handler = MyHandler()
    observer = Observer()
    observer.schedule(event_handler, path='/home/jmotacek/hyperledger-pi-composer/logs/peer0org1log.txt', recursive=False)
    observer.start()

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()