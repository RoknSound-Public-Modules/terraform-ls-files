data "external" "var" {
  program = ["python", "${path.module}/ls.py"]

  query = {
    # arbitrary map from strings to strings, passed
    # to the external program as the data query.
    pattern = var.pattern
  }
}

output "files" {
  value = jsondecode(data.external.var.result.files)
}