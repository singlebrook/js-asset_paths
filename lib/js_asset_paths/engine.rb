module JsAssetPaths
  class Engine < Rails::Engine
    isolate_namespace(JsAssetPaths)

    initializer('js-assets_paths.compile', after: 'sprockets.environment') do |application|
      JsAssetPaths::Generator.environment = application
    end
  end
end
