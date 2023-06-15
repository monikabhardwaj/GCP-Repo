# This is a main project file
resource "google_project" "my_project" {
  name            = "gcp-ctools"
  project_id      = "gcp-ctools"
 # billing_account = "my-billing-account-id"
}