# Pre-requirements
## SSH key
You have to create two secrets that contain the SSH key (private and public) which are used for the Cell Wrapper to communicate to the machine running the DU and UpperPHY
```
kubectl create secret generic cw-private --from-file=private=id_rsa
kubectl create secret generic cw-public --from-file=private=id_rsa.pub
```
