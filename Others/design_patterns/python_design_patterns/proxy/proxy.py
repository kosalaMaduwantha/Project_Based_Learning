import time

class Producer:
    """Define the 'resource-intensive' object to instantiate!"""
    def produce(self):
        print("Producer is working hard")
        
    def meet(self):
        print("Producer has time to meet you now!")
        
class Proxy:
    """Define the 'relatively less resource intensive' proxy instance"""
    def __init__(self):
        self.occupied = 'No'
        self.producer = None
        
    def produce(self):
        """Checking if Producer is available"""
        print("Artist Checking if Producer is available ...")
        
        if self.occupied == 'No':
            # if the producer is available, create a producer object
            self.producer = Producer()
            time.sleep(2)
            
            # make producer meet the guest
            self.producer.meet()
            
        else:
            # otherwise, dont instantiate a producer
            time.sleep(2)
            print("producer is busy . . .")
            
            
            
# checking the program
p = Proxy()

# make the proxy; artist produce until Producer is available
p.produce()   

# change the state of the producer
p.occupied = 'Yes'

# make the producer produce
p.produce()