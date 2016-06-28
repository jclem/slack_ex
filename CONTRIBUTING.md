# Contributing

This document outlines the basic guidelines for contributing to `slack_ex`, and
also serves as a reminder for its main contributor, should they forget what to
do when they need to add new API methods 😰

## New API Methods

Let's say that Slack decides to add new functionality where users can (legally)
add music tracks that play on a loop while users are in a Slack channel. They
forget to add methods for disabling these tracks, so the only methods provided
are `tracks.addToChannel` and `tracks.upload`.

In order to support these methods, we'll create a `Slack.Track` module that
exposes `addToChannel` and `upload` functions:

```elixir
defmodule Slack.Track do
  @moduledoc """
  Functions for adding and uploading music tracks
  """

  @base "tracks"

  use Slack.Request

  @doc """
  Add an existing track to a channel.

  https://api.slack.com/methods/tracks.addToChannel

  ## Examples

      Slack.client(token)
      |> Slack.Track.addToChannel(channel: "C1234567890", track: "T1234567890")
  """
  @spec addToChannel(Slack.Client.t, Keyword.t) :: Slack.response
  defpost :addToChannel

  @doc """
  Upload a new track.

  https://api.slack.com/methods/tracks.upload

  ## Examples

      Slack.client(token)
      |> Slack.Track.upload(notes: "BAG,BAG,GGGGAAAA,BAG") # "Hot Cross Buns"
  """
  @spec upload(Slack.Client.t, Keyword.t) :: Slack.response
  defpost :upload
end
```

And that's it! The macro `defpost` (you can use `defget` when you're not
changing anything) does all the work for us, creating a function with the given
name that does all of the fancy pattern matching we need in order to determine
a successful API method call.
