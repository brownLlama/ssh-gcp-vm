#

<h1 align="center">Hi 👋, I'm brown Llama </h1>
<h3 align="center">A passionate Analytics Engineer</h3>

# Personalizing GCP VM before SSH via VSCode

I like to standarize my personal setting in GCP VM, so I can have all the features as I have in my local machine.

In this guide, I'll walk you through the SSH the VM via VSCode and add some rich features with a small pinch of my personal taste.

## Step 1: Creating SSH key

Create a SSH key pair (in your ssh-key directory), using following command

```bash
ssh-keygen -f <NAME_OF_YOUR_VM> -C "<USER_NAME>"
```

This will create a public and private key. Copy the public key, by following command

```bash
cat | pbcopy
```

## Step 2: Create VM Instance in GCP

I would assume that you know how to create a VM Instance. While creating the VM in the security, add your SSH public key there, so you can SSH the VM using your terminal / VSCode.

## Step 3: Installing cool features

I'm a big fan of ohmyzsh. So I'll be using that as my shell. It is also nice to have autosuggestions and syntax highlight in the terminal, so I'll add those too. I'll also install homebrew to install `RM Improved (RIP)` and `Exa`. RIP is improved version of rm, as the name suggests. It will keep the removed files/directory in temp storage and we are able to retrive the accidently deleted files and dir. Exa gives a visual performance when running `ls` command. Never liked the UI version of git in VSCode, but instead I use LazyGit for all git commands. At last few alias, that I frequently use.

I have complied all these in `setup.sh` file. All you need to do is clone the my repo and run `setup.sh` file, using following commands.

```bash
git clone https://github.com/brownLlama/ssh_gcp_vm.git
```

Goto the downloaded directory

```bash
cd ssh_gcp_vm
```

Run the `setup.sh` file

```bash
./setup.sh
```

Once the setup is complete it will exit the VM.

## Step 4: Creating SSH Config File

In your VSCode install `Remote - SSH` and `Remote Explorer` Extensions. Now press `Cmd + Shift + p` and search for "Remote SSH: Open SSH Configuration file" and select your ".ssh/config" directory. Add the following in your config file.

```config
Host <NAME_OF_YOUR_VM>
    HostName <EXTERNAL_IP_ADDRESS>
    User <USERNAME>
    IdentityFile <PATH_TO_PRIVATE_SSH_KEY>
```

Save and exit.

## Step 5: Connecting to VM via VSCode.

Hit again `Cmd + Shift + p` and search for "Remote SSH: Connect to Host" and select your Host Name and that should do it.

## (Optional) Step 6: Connecting to VM via Terminal.

If you want to SSH to VM via Terminal just run the following command.

```bash
ssh -i <NAME_OF_YOUR_VM> <USERNAME>@<EXTERNAL_IP_ADDRESS>
```
