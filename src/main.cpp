#include <gcglue/app.hpp>

#include "generated/gc_image.hpp"
#include "generated/imports.hpp"

namespace {

class Super_mario_strikersApp final : public gcglue::GCApp {
 public:
  Super_mario_strikersApp()
      : gcglue::GCApp("Super Mario Strikers",
                      super_mario_strikers::GetImageDefinition(),
                      super_mario_strikers::DefaultRuntimeConfig()) {}

 protected:
  void OnPreLaunch(gcglue::Runtime& runtime) override {
    super_mario_strikers::RegisterImports(runtime);
  }
};

} // namespace

int main(int argc, char** argv) {
  Super_mario_strikersApp app;
  return app.Run(argc, argv);
}
