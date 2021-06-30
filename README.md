# Antora
- https://docs.antora.org/antora/2.3/install-and-run-quickstart/
- npm i -g @antora/cli @antora/site-generator-default

# PlantUml
- test test
- https://joymonscode.blogspot.com/search/label/plantUML


# alternative cleanup
- name: The job cleanup
      if: ${{ always() }}
      run: | 
        gigalixir ps:scale --replicas=0 --app_name myapp-${{ env.APP_ID }}
        echo DATABASE_ID=$(gigalixir pg --app_name myapp-${{ env.APP_ID }} | jq '.[].id') >> $GITHUB_ENV
        gigalixir pg:destroy -y -d ${{ env.DATABASE_ID}}
        gigalixir apps:destroy -y --app_name myapp-${{ env.APP_ID }}
        echo $DATABASE_ID
# test
- again fuck again again 


# New 
gigalixirdeploy
testasdf
gigalixr ps:scale --replicas=0

gigalixir ps:scale --replicas=0 --app_name gigalixirdeploy
gigalixir pg:destroy -y -d 7e8fbda4-0080-46f6-a302-6575bb3bd320
gigalixir apps:destroy -y --app_name gigalixirdeploy 


gigalixir create --name a1234567 --cloud gcp --region europe-west1
gigalixir pg:create --app_name a1234567 --free -y
gigalixir pg:create --app_name a1234567 --cloud gcp --region V2018-us-central1 --free --yes

# Cleanup und advanced workflow
- https://werf.io/documentation/v1.2/advanced/ci_cd/github_actions.html

# Gigalixirdeploy
- test1

# Remove Gigalixir App
- gigalixir ps:scale --replicas=0 --app_name gigalixirdeploy
- gigalixir pg:destroy -y -d 7e8fbda4-0080-46f6-a302-6575bb3bd320
- gigalixir apps:destroy -y --app_name gigalixirdeploy 

# Create Gigalixir App
- gigalixir create --name a1234567 --cloud gcp --region europe-west1



# TOODs
- ExCoveralls GitHubActions, check gitignore (gigayizere)
- Desktop Build ( https://itnext.io/enforcing-code-quality-in-elixir-20f87efc7e66 )
- Remove plt ordner mix.exs
- add Chrome or headless driver

# CI/CD
- https://hashrocket.com/blog/posts/build-the-ultimate-elixir-ci-with-github-actions
- https://dev.to/mnishiguchi/basic-github-actions-setup-for-phoenix-apps-m3g
- https://devato.com/post/github-actions-for-phoenix
- https://itnext.io/enforcing-code-quality-in-elixir-20f87efc7e66
-

# ASDF
- https://github.com/smashedtoatoms/asdf-postgres
- https://thinkingelixir.com/elixir-1-12-and-your-first-mix-install-script/

# ElxirLS Issues
- https://thinkingelixir.com/vs-code-broken-for-elixir/#Open_a_single_Elixir_project_at_the_root

# Setup
- asdf install
- pg_ctl start + createdb default + createuser -s postgres (psql -d default -U postgres)

# Github Actions
- https://github.community/t/mysql-service-never-comes-up-healthy-in-action/16890/4


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
