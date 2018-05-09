### cryoem-download-aterm-script-url-create

This is a shell script to execute *unimelb.asset.download.aterm.script.create* service on Mediaflux server to generate a sharable url to download shell scripts to download specify data collections in Mediaflux.

#### Usage
```
Usage:
    cryoem-download-aterm-script-url-create [-h|--help] [--expire-days <number-of-days>] [--ncsr <ncsr>] [--skip] [--quiet] <namespace>

Options:
    -h | --help                       prints usage.
    --email <addresses>               specify the email recipient of the generated url. Can be comma-separated if there are more than one.
    --expire-days <number-of-days>    expiry of the auth token. Defaults to 14 days.
    --ncsr <ncsr>                     number of concurrent server requests. Defaults to 4.
    --skip                            skip if output file exists.
    --quiet                           do not print output message.

Positional arguments:
    <namespace>                       Mediaflux asset namespace to be downloaded by the scripts. Can be multiple, but must be from the same project.

Examples:
    cryoem-download-aterm-script-url-create --email user1@unimelb.edu.au --expire-days 10 --ncsr 2 proj-abc-1128.4.999/RAW_DATA proj-abc-1128.4.999/PROCESSED_DATA
```
