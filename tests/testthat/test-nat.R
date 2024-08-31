test_that("read.neurons.vfb works", {
  expect_s3_class(oavpm3 <- read.neurons.vfb("octopaminergic VPM3 neuron"), 'neuronlist')
  expect_equal(unique(unlist(oavpm3[,'parents_label'])),
               "octopaminergic VPM3 neuron")
})
