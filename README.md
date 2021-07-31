# My personal site

## Development

1. Clone repo
    ```
    git clone 
    ```
1. Change to it
    ```
    cd xyz.johnsilvan
    ```
1. Install Hugo. Assumes OS is Linux
    ```
    ./task_install_hugo.sh <HUGO_VERSION>
    ```
1. Serve site
    ```
    ./task_serve.sh
    ```
1. Build site
    ```
    ./task_build.sh tagname
    ```
1. Publish docker image to docker hub
    ```
    docker push johnsilvan/johnsilvan.xyz:tagname
    ```
1. Deploy site
    Uses ansible to deploy container of the site to host present in /etc/ansible/hosts called vps using username "username"
    ```
    ansible-playbook main.yml -l vps -u username
    ```
    
