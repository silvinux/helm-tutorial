# helm-tutorial
helm Chart examples and tutorial resources

This is an example charts repository.

### How It Works

I set up GitHub Pages to point to the `docs` folder. From there, I can
create and publish docs like this:

```console
$ helm package nginx-chart
$ mv frontend-nginx-*.tgz docs/
$ helm repo index docs --url https://silvinux.github.io/helm-tutorial/docs
$ git add --all
$ git commit -am "Release Version "
$ git push origin master
```

From there, I can do a `helm repo add helm-tutorials https://silvinux.github.io/helm-tutorial/docs`
