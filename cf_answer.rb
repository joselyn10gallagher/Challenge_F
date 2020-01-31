# Use this variable to speed up, then slow down the sample
x = 1
# Use this variable to store the long file path of your sample
banger = "C:/Users/joselyn_gallagher/Desktop/challenge_f/this_is_a_banger.wav"


# PLAY THE SAMPLE AT NORMAL SPEED (rate: 1 is the default)
sample banger
sleep 3


# DECREASE THE SPEED OF THE SAMPLE FOUR TIMES
4.times do
  sample banger, rate: x
  sleep 3
  x = x - 0.1
  print "decrease the rate by 0.1"
end


# INCREASE THE SPEED OF THE SAMPLE 4 TIMES
4.times do
  sample banger, rate: x
  sleep 3
  x = x + 0.1
  print "increase the rate by 0.1"
end


# PLAY THE SOUND AT A FASTER SPEED (rate > 1)
with_fx :reverb do
  sample banger, rate: 1.5
end