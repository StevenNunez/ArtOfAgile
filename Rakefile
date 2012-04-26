require "rubygems"

desc "Test module"
task :test do
  failure_detected = false
  Dir.glob("test/test*.rb").each do |test_file|
    failure_detected = true unless system("java","-jar","vendor/jruby-complete-1.6.7.jar", test_file)
  end
  exit 1 if failure_detected
end

desc "Quick module"
task :qtest do
  failure_detected = false
  Dir.glob("test/test*.rb").each do |test_file|
    failure_detected = true unless system("ruby", test_file)
  end
  exit 1 if failure_detected
end
