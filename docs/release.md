## How to make a new release for ocm-transport-plugin

1.  In `go.mod` file, update the version of KubeStellar to the one the following release is going to match.

1. Run `make modules` to make sure `go.sum` is updated accordingly. 
 
1.  In `Makefile`, update the IMAGE_TAG variable to hold the version you're about to release, for example:
    ```
    $ IMAGE_TAG ?= 0.1.0
    ```

1.  Push a PR with those changes.

1. After the PR is merged, apply the Git tag `v$version` to that new commit in the shared repo, where `$version` is the semver identifier for the release (e.g., `v0.1.0`).