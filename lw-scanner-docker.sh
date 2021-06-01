while getopts i:t:a:p: flag
do
    case "${flag}" in
        i) image=${OPTARG};;
        t) tag=${OPTARG};;
        a) account=${OPTARG};;
	p) token=${OPTARG};;
    esac
done
echo "Starting to scan..."
echo "Image: $image";
echo "Tag: $tag";
echo "Account: $account";
echo "Token: $token";

docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -v /tmp/lw-scanner:/tmp/lw-scanner -e "LW_ACCOUNT_NAME"="$account" -e "LW_ACCESS_TOKEN"="$token" securethecloud/lw-scanner:latest evaluate $image $tag -l /tmp/lw-scanner/logs -d /tmp/lw-scanner/data --debug
