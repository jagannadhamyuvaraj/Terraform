### Terraform Life cycle Rules

#### Ignore_changes

- ignore_changes block within a resource definition to prevent specific attributes of that resource from being considered when determining whether to update or recreate the resource. This can effectively prevent certain changes from being applied to your infrastructure

- Terraform not to update specific resource attributes even if they drift outside of Terraform

#### create_before_destroy

- This will used when we want to create a resource by deleting the current resource. Terraform waits for the new resource to up and then it deletes.

#### prevent_destroy

- This lifecycle allows us to accidental deletion prevention unless we update the terraform file.

#### replace_triggered_by

- This lifecycle policy `replace_triggered_by` meta-argument forces a resource to be destroyed and recreated whenever a referenced managed resource or attribute changes

#### pre and post

- `Preconditions` ensure that Terraform doesn’t create a resource if a condition fails.
- `Postconditions` check a resource’s final state after Terraform creates it.
