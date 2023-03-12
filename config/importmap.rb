# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "cleave.js", to: "https://ga.jspm.io/npm:cleave.js@1.6.0/dist/cleave.js", preload: true
pin "cleave-phone.js", to: "https://nosir.github.io/cleave.js/dist/cleave-phone.i18n.js", preload: true

pin_all_from "app/javascript/controllers", under: "controllers"
