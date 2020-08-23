import time

# seconds passed since epoch
seconds = time.time()
local_time = time.ctime(seconds)
print("Local time:", local_time)	