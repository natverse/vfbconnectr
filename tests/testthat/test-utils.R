test_that("vc_df works", {
  vc=VfbConnect()

  KC_types <-  vc$get_subclasses("Kenyon cell", summary=TRUE)

  expect_s3_class(df <- vc_df(KC_types), 'data.frame')
  expect_true(any(grepl("FBbt_00003686", df$parents_id)))
  expect_true(any(grepl("FBbt_00049825", df$id)))

  expect_s3_class(vc_df(vc$get_instances("'adult antennal lobe projection neuron DA3 adPN'", summary=T)),
              'data.frame')
})

test_that("valid_vfbids works", {
  expect_true(valid_vfbids("VFB_001001dr"))
  expect_true(all(valid_vfbids(c("VFB_001001dr", "VFB_jrchk10e"))))
  expect_false(valid_vfbids("rhubarb"))
  expect_equal(valid_vfbids(c("rhubarb", "VFB_001001dr")),
               c(F, T))
  expect_false(valid_vfbids("VFB_001001000"))
  expect_true(valid_vfbids("VFB_00100100"))
})
