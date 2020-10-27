###############################################################################
#
# Creates all resources with Terraform.
#
###############################################################################

# Bash safeties: exit on error, no unset variables, pipelines can't hide errors
set -o errexit
set -o nounset
set -o pipefail

# Locate the root directory
ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

# shellcheck source=scripts/common.sh
source "${ROOT}/scripts/common.sh"

# Generate the variables to be used by Terraform
# shellcheck source=scripts/generate-tfvars.sh
# TODO remove this
#source "${ROOT}/scripts/generate-tfvars.sh"

# Initialize and run Terraform
(cd "${ROOT}/terraform"; terraform init -input=false)
(cd "${ROOT}/terraform"; terraform apply -input=false -auto-approve)
