platform :ios, '8.0'
inhibit_all_warnings!
use_frameworks!

project 'EARC/EARC.xcodeproj'

def pod_development
    pod 'ReactiveObjC'
end

def pod_test
    pod 'OCMock'
end

target :EARC do
    pod_development
    
    target :EARCTests do
        inherit! :search_paths
        pod_test
    end
end
