# Cow wisdom web server

This is a simple web server that serves cow wisdom using the fortune-mod and cowsay packages. It displays a random cow saying a random fortune.

## Prerequisites

To run this web server, you need to have the fortune-mod and cowsay packages installed. You can install them by running the following command:

```
sudo apt-get update && apt-get install -y cowsay fortune netcat
```

## How to use?

1. Clone this repository to your local machine.
2. Navigate to the repository's directory.
3. Open the wisecow.sh script and ensure that the paths for fortune and cowsay commands are correctly set. By default, the paths are /usr/games/fortune and /usr/games/cowsay. If the commands are installed in a different location on your system, update the paths accordingly in the script.
4. Run the following command to start the web server:`./wisecow.sh`
This will start the server on the default port 4499. If you want to use a different port, you can modify the **SRVPORT** variable inside the **'wisecow.sh'** script.

5. Open your web browser and navigate to **http://localhost:4499** (replace 4499 with the desired port if you modified it).

6. You should see a cow saying a random fortune on the web page.

If you encounter any errors related to the **fortune** or **cowsay** commands, double-check the paths in the wisecow.sh script to ensure they match the actual locations of the commands on your system.

Feel free to explore different fortunes by refreshing the page or opening multiple browser tabs.

Please refer to the **`wisecow.sh`** script for the implementation details.

Enjoy the wisdom of the cows!


## What to expect?
![cow wisdom](https://user-images.githubusercontent.com/9133227/225524281-e81a6673-5550-4db0-9bd0-63f9bbc7c2bc.png)
