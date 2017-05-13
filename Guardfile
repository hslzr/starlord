group :drax_is_watching, halt_on_fail: true do
  guard :reek do
    watch(/^lib\/.*\.rb$/)
  end

  guard :rubocop do
    watch(%r{.+\.rb$})
  end
end
