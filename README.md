# ocm-transport-plugin
KubeStellar transport plugin implementation based on Open-Cluster-Management

## Getting Started

## Build and run ocm transport controller locally

1.  Run the following command to build locally ocm transport controller executable:
    ```
    $ make build
    ```

1.  Set the following environment variables:
    
    1.  Set `TRANSPORT_KUBECONFIG` environment variable to hold the transport kubeconfig file path.

    1.  Set `WDS_KUBECONFIG` environment variable to hold the WDS kubeconfig file path.
    
    1.  Set `WDS_NAME` environment variable to hold a unique name for the WDS, e.g:
        ```
        export WDS_NAME=wds1
        ```

1.  Run locally OCM transport controller executable:
    ```
    $ ./bin/ocm-transport-plugin --transport-kubeconfig ${TRANSPORT_KUBECONFIG} --wds-kubeconfig ${WDS_KUBECONFIG} --wds-name ${WDS_NAME}
    ```

<br>

<td>
    <a href="https://landscape.cncf.io">
        <img src="docs/images/cncf-color.png" width="300px;" alt="Cloud Native Computing Foundation Logo"/>
    </a>
</td>
<br>We are a Cloud Native Computing Foundation sandbox project.
<br>Kubernetes and the Kubernetes logo are registered trademarks of The Linux Foundation® (TLF).
<br>© 2022-2024. The KubeStellar Authors.