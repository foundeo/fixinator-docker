# fixinator-docker

Docker container for [fixinator](https://fixinator.app/) client. Built using [minibox](https://github.com/foundeo/minibox/).

## Usage from command line

Run the following on any computer that has docker installed:

    docker run -it -v /local/folder:/code -e FIXINATOR_API_KEY=$FIXINATOR_API_KEY -e CI=1 foundeo/fixinator:latest box fixinator path=/code

In this case the `-v /local/folder:/code` is mounting the local folder `/local/folder` to the path `/code` in the container, we then pass `/code` into the `path` argument of fixinator to tell it what code to scan.

## Version Tags

You can use `latest` to get the latest build. There are also version tags published on a monthly basis, eg `v2.0.3`
