test_that("vc_df works", {
  vc=VfbConnect()

  KC_types <-  vc$get_subclasses("Kenyon cell", summary=TRUE)

  expect_s3_class(df <- vc_df(KC_types), 'data.frame')
  expect_true(any(grepl("FBbt_00003686", df$parents_id)))
  expect_true(any(grepl("FBbt_00049825", df$id)))

  expect_s3_class(vc_df(vc$get_instances("'adult antennal lobe projection neuron DA3 adPN'", summary=T)),
              'data.frame')
})
