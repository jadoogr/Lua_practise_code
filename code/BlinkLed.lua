local pin=0
local TIMER_ID=1
local duration=1000
local count=10;
local state=gpio.LOW
gpio.mode(pin,gpio.OUTPUT)
tmr.alarm(TIMER_ID,duration,tmr.ALARM_AUTO,
function()
count--
if state==gpio.LOW then state=gpio.HIGH
else state=gpio.LOW
end
gpio.write(pin,state)
if (count)==0 
then tmr.stop()
end
end
)