# Local Preview

To assist (Windows) users with running a localhost server to render site to preview changes without having to commit them to the repo.

> This process is using a shell script file as a local-preview-only shim, it is NOT loaded during a real GitHub Pages build. This is because it needs to match the GitHub pages processes. See the files in `bin` for more detail.

1. From the documentation project file on your machine, run the following `bash` command in your terminal.

```bash
./bin/serve.sh
```
or
```bash
bash ./bin/serve.sh
```

2. This will launch a localhost server, often as `127.0.0.1:4000`, which will be shown in the terminal after you've run the shell script above.

3. You can navigate to this in your machine's browser and preview the documentation site.

4. If you modify a file, the local server will automatically trigger the build process and you should be able to see your changes, typically in less than 30-seconds.

5. When you want to quit the server, just use `CTRL-C` to stop (this instruction should also have appeared in your terminal.)

6. When prompted to "Terminate batch job (Y/N)?", enter a value (this seems to not accept `N` to return to the localhost server).
