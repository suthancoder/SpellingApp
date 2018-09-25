require 'att_speech'

att_speech = ATTSpeech.new({ :api_key    => ENV['ATT_SPEECH_KEY'],
                             :secret_key => ENV['ATT_SPEECH_SECRET'],
                             :scope      => 'SPEECH' })


# Read the text file contents

# __FILE__ = "temp"
tfp = File.expand_path(File.join(File.dirname(File.dirname(__FILE__)), 'examples', 'helloWorld.txt'))
txt_contents = File.read(tfp)

audio = att_text.text_to_speech(txt_contents)
write_wav_file(audio)
