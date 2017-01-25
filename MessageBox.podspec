Pod::Spec.new do |s|

  s.name         = "MessageBox"
  s.version      = "1.1.1"
  s.summary      = "MessageBox is a simple concept for decoupling entities. Think of it as notifications but the opposite."

  s.description  = <<-DESC
MessageBox is a simple concept for decoupling entities. Think of it as notifications but lazy. For example entity A can place a message that entity B can read whenever suitable – not at once like notifications.
- For example entity A can place a message that entity B can read whenever suitable – not at once like notifications.
- A view controller would like to talk to another view controller, but you don't want to create a strong or weak relationship.
DESC

  s.homepage     = "https://github.com/MKGitHub/MessageBox-Concept"
  s.screenshots  = "https://raw.githubusercontent.com/MKGitHub/MessageBox-Concept/master/MessageBox.png"

  s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE.txt" }

  s.author             = { "Mohsan Khan" => "git.mk@xybernic.com" }

  s.osx.deployment_target = "10.11"
  s.ios.deployment_target = "9.0"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0" 

  s.source       = { :git => "https://github.com/MKGitHub/MessageBox-Concept.git", :tag => "#{s.version}" }

  s.source_files  = "Sources/MessageBox.swift"

  s.requires_arc = true

end
