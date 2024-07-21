require("pantran").setup({
  default_engine = "google",
  engines = {
    google = {
      fallback = {
        default_source = "auto",
        default_target = "pt"
      }
    },
  },
})
