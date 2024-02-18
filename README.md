<img alt="" width="500px" align="left" src="KubeStellar-with-Logo.png" />

<br/>
<br/>
<br/>
<br/>

This repository is the (Open-Cluster-Management)[https://open-cluster-management.io/] based implementation of KubeStellar transport controller. 
KubeStellar transport controller is a component that is responsible for propagating selected objects from the center to the WECs.
Transport controller is pluggable and allows implementing it using different plugins. 
Transport controller is a mandatory part of KubeStellar and should run in a working system with one of the plugin implementations.


# Getting Started

## Build and run ocm transport controller locally using executable process

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