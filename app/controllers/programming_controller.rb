class ProgrammingController < ApplicationController

    def javascript
        page = params[:page] || 1
        per = params[:per] || 10
        @javascriptbooks = []
        @javascriptbooks = (RakutenWebService::Books::Book.search(title: "JavaScript", page: page, hits: per).to_a)
        render json: { status: 'javascript', data: @javascriptbooks }
    end

    def typescript
        page = params[:page] || 1
        per = params[:per] || 10
        @typescriptbooks = []
        @typescriptbooks = (RakutenWebService::Books::Book.search(title: "TypeScript", page: page, hits: per).to_a)
        render json: { status: 'typescript', data: @typescriptbooks }
    end



    def ruby
        page = params[:page] || 1
        per = params[:per] || 10
        @rubybooks = []
        @rubybooks = (RakutenWebService::Books::Book.search(title: "Ruby", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'ruby', data: @rubybooks }
    end


    def python
        page = params[:page] || 1
        per = params[:per] || 10
        @pythonbooks = []
        @pythonbooks = (RakutenWebService::Books::Book.search(title: "Python", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'python', data: @pythonbooks }
    end


    def java
        page = params[:page] || 1
        per = params[:per] || 10
        @javabooks = []
        @javabooks = (RakutenWebService::Books::Book.search(title: "Java", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'java', data: @javabooks }
    end

    def php
        page = params[:page] || 1
        per = params[:per] || 10
        @phpbooks = []
        @phpbooks.concat(RakutenWebService::Books::Book.search(title: "PHP", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'php', data: @phpbooks }
    end

    def go
        page = params[:page] || 1
        per = params[:per] || 10
        @gobooks = []
        @gobooks.concat(RakutenWebService::Books::Book.search(title: "Go", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'go', data: @gobooks }
    end

    def react
        page = params[:page] || 1
        per = params[:per] || 10
        @reactbooks = []
        @reactbooks = (RakutenWebService::Books::Book.search(title: "React", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'react', data: @reactbooks }
    end

    def vue
        page = params[:page] || 1
        per = params[:per] || 10
        @vuebooks = []
        @vuebooks = (RakutenWebService::Books::Book.search(title: "Vue", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'vue', data: @vuebooks }
    end

    def nextjs
        page = params[:page] || 1
        per = params[:per] || 10
        @nextjsbooks = []
        @nextjsbooks = (RakutenWebService::Books::Book.search(title: "Next.js", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'nextjs', data: @nextjsbooks }
    end

    def nuxtjs
        page = params[:page] || 1
        per = params[:per] || 10
        @nuxtjsbooks = []
        @nuxtjsbooks = (RakutenWebService::Books::Book.search(title: "Nuxt.js", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'nuxtjs', data: @nuxtjsbooks }
    end

    def nestjs
        page = params[:page] || 1
        per = params[:per] || 10
        @nestjsbooks = []
        @nestjsbooks = (RakutenWebService::Books::Book.search(title: "Nest.js", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'nestjs', data: @nestjsbooks }
    end

    def jquery
        page = params[:page] || 1
        per = params[:per] || 10
        @jquerybooks = []
        @jquerybooks = (RakutenWebService::Books::Book.search(title: "jQuery", page: page, hits: per).to_a)
        render json: { status: 'jquery', data: @jquerybooks }
    end

    def rails
        page = params[:page] || 1
        per = params[:per] || 10
        @railsbooks = []
        @railsbooks = (RakutenWebService::Books::Book.search(title: "Rails", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'rails', data: @railsbooks }
    end

    def laravel
        page = params[:page] || 1
        per = params[:per] || 10
        @laravelbooks = []
        @laravelbooks = (RakutenWebService::Books::Book.search(title: "Laravel", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'laravel', data: @laravelbooks }

    end
end
