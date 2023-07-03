# Rails GraphQL API

Simple Rails Grahql project created using [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) following [this](https://www.honeybadger.io/blog/graphql-apis-for-rails/) blog post.

## Queries
This GraphQL API defines one query type, `posts`:

```ruby
query {
  posts {
    title
    content
    commentsCount
    comments {
      message
    }
  }
}
```


## Mutation
This GraphQL API defines one mutation type, `createPost`:
And one muration;

```ruby
mutation {
  createPost(input: {
    title: "New Spider Man Movie",
    content: "Several old spider mans will be participating, Tobby Mcguire, Tom Holland, etc.",
  }) {
    post {
      id
      title
      content
    }
    errors
  }
}
```

## GraphiQL IDE

This repository cames with [graphiql-rails](https://github.com/rmosolgo/graphiql-rails) installed and configure. This facilitates having a GraphiQL IDE open, by simpy running `rails server` the GrhaphiQL editor will be accessible through `locahost:3000/graphiql`.
