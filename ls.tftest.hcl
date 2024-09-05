# valid_string_concat.tftest.hcl

variables {
  pattern = "*.tf"
}

run "ls_files" {

  command = plan

  assert {
    condition     = contains(jsondecode(data.external.var.result.files), "main.tf")
    error_message = "main.tf not found"
  }

}
