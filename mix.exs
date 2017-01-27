defmodule Switchboard.Mixfile do
  use Mix.Project

  def project do
    [app: :switchboard,
     version: "0.3.2",
     compilers: [:erlang, :app],
     erlc_options: [{:parse_transform, :lager_transform}, {:i, "include"}],
     deps: deps()]
  end

  def application do
    [applications: [:kernel,
                    :stdlib,
                    :inets,
                    :crypto,
                    :poolboy,
                    :lager,
                    :gproc,
                    :jsx]]
  end

  defp deps do
    [
     #{:lager, github: "basho/lager", tag: "3.0.2"},
     #{:poolboy, github: "devinus/poolboy", tag: "1.4.1"},
     #{:cowboy, "~> 1.0"},
     #{:gproc, "~> 0.6.1"},
     #{:jsx, "~> 2.8"}
     {:lager,    github: "basho/lager",       sha: "81eaef0ce98fdbf64ab95665e3bc2ec4b24c7dac"},
     {:goldrush, github: "basho/goldrush",    tag: "0.1.9", override: true},
     {:poolboy,  github: "devinus/poolboy",   sha: "d378f996182daa6251ad5438cee4d3f6eb7ea50f"},
     {:cowboy,   github: "ninenines/cowboy",  tag: "1.0.1"},
     {:cowlib,   github: "ninenines/cowlib",  tag: "1.0.1", override: true},
     {:gproc,    github: "uwiger/gproc",      sha: "01c8fbfdd5e4701e8e4b57b0c8279872f9574b0b"},
     {:jsx,      github: "talentdeficit/jsx", sha: "aaf915e173d0ea7e1201c0edd4930dc6c3cd179d"},
     {:ranch,    github: "ninenines/ranch",   tag: "1.1.0", override: true}
    ]
  end
end
