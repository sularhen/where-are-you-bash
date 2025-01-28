# where-are-you-bash
Script that i made in bash to make a fast geolocation of the ip or domain to scan inside the linux terminal.

This Script was made using ip-api.com as the resource of imformation where we are getting the geolocation of the domain or ip.

HOW TO USE IT:

1. Executing it as an normal script:

- Copy the script from the repository.
- Create your file whith the name whereareyou.sh in linux using the command nano.
- Paste the code
- Run it in the terminal using ./whereareyou.sh <target ip or domain>

2. Executing it as an integrated command for linux (RECOMMENDED)

- Do all the steps above.
- Move the script to your path so you can execute it as a command using
sudo mv whereareyou.sh /usr/local/bin/whereareyou
- Give permissons of execution to the script. with
sudo chmod +x /usr/local/bin/whereareyou and thas it you can run it by using whereareyou <target ip or domain>

EXAMPLE OF USE:

Whith option 1:
  
  ❯ ./whereareyou google.com
    Information for: google.com
    country: United States
    Region: California
    City: Mountain View
    Hosted by: Google LLC

with option 2:

  ❯ whereareyou google.com
    Information for: google.com
    country: United States
    Region: California
    City: Mountain View
    Hosted by: Google LLC

ABOUT PERMISSONS 

You can copy, modify or change this code however you want, add diferent sources and play with it.

Sularhen.
