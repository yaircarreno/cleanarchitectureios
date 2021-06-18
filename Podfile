platform :ios, '13.0'
use_frameworks!
workspace 'CleanArchitecture-iOS'

def dependencyinjection
  pod "Resolver"
end

def firebase
  pod 'Firebase/Core'
  pod 'Firebase/Analytics'
  pod 'Firebase/Auth'
  pod 'FirebaseUI/Google'
end

target 'MainApp' do
    project 'MainApp/MainApp.xcodeproj'
    dependencyinjection
    firebase

    target 'MainAppTests' do
        inherit! :search_paths
        # Pods for testing
    end

    target 'MainAppUITests' do
        inherit! :search_paths
        # Pods for testing ui
        firebase
        dependencyinjection
    end
end

target 'Authentication' do
    project 'Authentication/Authentication.xcodeproj'
    dependencyinjection
end

target 'Category' do
    project 'Category/Category.xcodeproj'
    dependencyinjection
end

target 'Listings' do
    project 'Listings/Listings.xcodeproj'
    dependencyinjection
end

target 'Detail' do
    project 'Detail/Detail.xcodeproj'
    dependencyinjection
end

target 'Analytics' do
    project 'Analytics/Analytics.xcodeproj'
end

target 'Domain' do
    project 'Domain/Domain.xcodeproj'
    dependencyinjection
end

target 'DependencyInjectionResolver' do
    project 'DependencyInjectionResolver/DependencyInjectionResolver.xcodeproj'
    firebase
    dependencyinjection
end

target 'PlatformFirebase' do
    project 'PlatformFirebase/PlatformFirebase.xcodeproj'
    firebase
    dependencyinjection
end
