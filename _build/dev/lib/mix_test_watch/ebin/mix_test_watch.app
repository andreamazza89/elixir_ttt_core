{application,mix_test_watch,
             [{registered,[]},
              {description,"Automatically run tests when files change"},
              {vsn,"0.2.6"},
              {modules,['Elixir.Mix.Tasks.Test.Watch',
                        'Elixir.MixTestWatch.Command',
                        'Elixir.MixTestWatch.Config',
                        'Elixir.MixTestWatch.Message',
                        'Elixir.MixTestWatch.Path',
                        'Elixir.MixTestWatch.Shell']},
              {applications,[kernel,stdlib,elixir]}]}.