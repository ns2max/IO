#!/usr/bin/env coffee

    IO = require '../../io'
    http = require 'http'

    server = new IO.ports.NodeHttpServerPort port: 8080, http

    IO.addPort 'Client', server

    server.listen()

    IO.Client.on 'echo', (data, options, res) ->
     console.log data
     res.success 'World listening...'

