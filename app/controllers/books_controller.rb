class BooksController < ApplicationController

    def search
        page = params[:page] || 1
        per = params[:per] || 10
        @all_books = RakutenWebService::Books::Book.search(booksGenreId: "001005005", page: page, hits: per)
        render json: { status: 'success', data: @all_books }
    end

    def base
        page = params[:page] || 1
        per = params[:per] || (10 / 5)
        @books = []
        @books.concat(RakutenWebService::Books::Book.search(title: "入門 HTML", booksGenreId: "001005017", page: page, hits: per).to_a)
        @books.concat(RakutenWebService::Books::Book.search(title: "入門 CSS", booksGenreId: "001005017", page: page, hits: per).to_a)
        @books.concat(RakutenWebService::Books::Book.search(title: "入門 Ruby", booksGenreId: "001005017", page: page, hits: per).to_a)
        @books.concat(RakutenWebService::Books::Book.search(title: "入門 Java", booksGenreId: "001005017", page: page, hits: per).to_a)
        @books.concat(RakutenWebService::Books::Book.search(title: "入門 JavaScript", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'base', data: @books }
    end


    def css
        page = params[:page] || 1
        per = params[:per] || (10 / 4)
        @cssbooks = []
        @cssbooks.concat(RakutenWebService::Books::Book.search(title: "CSS", booksGenreId: "001005017", page: page, hits: per).to_a)
        @cssbooks.concat(RakutenWebService::Books::Book.search(title: "Bootstrap", booksGenreId: "001005017", page: page, hits: per).to_a)
        @cssbooks.concat(RakutenWebService::Books::Book.search(title: "Tailwind", booksGenreId: "001005017", page: page, hits: per).to_a)
        @cssbooks.concat(RakutenWebService::Books::Book.search(title: "CSS設計", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'css', data: @cssbooks }

    end

    def computer
        page = params[:page] || 1
        per = params[:per] || (10 / 5)
        @computerbooks = []
        @computerbooks.concat(RakutenWebService::Books::Book.search(title: "TCP/IP", booksGenreId: "001005017", page: page, hits: per).to_a)
        @computerbooks.concat(RakutenWebService::Books::Book.search(title: "データベース", booksGenreId: "001005017", page: page, hits: per).to_a)
        @computerbooks.concat(RakutenWebService::Books::Book.search(title: "アルゴリズム", booksGenreId: "001005017", page: page, hits: per).to_a)
        @computerbooks.concat(RakutenWebService::Books::Book.search(title: "SQL", booksGenreId: "001005017", page: page, hits: per).to_a)
        @computerbooks.concat(RakutenWebService::Books::Book.search(title: "Linax", booksGenreId: "001005017", page: page, hits: per).to_a)
        @computerbooks.concat(RakutenWebService::Books::Book.search(title: "os", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'computer', data: @computerbooks }
    end

    def front_end
        page = params[:page] || 1
        per = params[:per] || (10 / 6)
        @frontbooks = []
        @frontbooks.concat(RakutenWebService::Books::Book.search(title: "JavaScript", page: page, hits: per).to_a)
        @frontbooks.concat(RakutenWebService::Books::Book.search(title: "TypeScript", page: page, hits: per).to_a)
        @frontbooks.concat(RakutenWebService::Books::Book.search(title: "React", booksGenreId: "001005017", page: page, hits: per).to_a)
        @frontbooks.concat(RakutenWebService::Books::Book.search(title: "Vue", booksGenreId: "001005017", page: page, hits: per).to_a)
        @frontbooks.concat(RakutenWebService::Books::Book.search(title: "jQuery", page: page, hits: per).to_a)
        @frontbooks.concat(RakutenWebService::Books::Book.search(title: "Next.js",booksGenreId: "001005017", page: page, hits: per).to_a)


        render json: { status: 'front', data: @frontbooks }
    end

    def back_end
        page = params[:page] || 1
        per = params[:per] || (10 / 10)
        @backbooks = []
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "Ruby", booksGenreId: "001005017", page: page, hits: per).to_a)
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "Rails", booksGenreId: "001005017", page: page, hits: per).to_a)
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "Python", booksGenreId: "001005017", page: page, hits: per).to_a)
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "PHP", booksGenreId: "001005017", page: page, hits: per).to_a)
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "Java", booksGenreId: "001005017", page: page, hits: per).to_a)
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "Node.js", booksGenreId: "001005017", page: page, hits: per).to_a)
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "Go", booksGenreId: "001005017", page: page, hits: per).to_a)
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "C言語", booksGenreId: "001005017", page: page, hits: per).to_a)
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "C#", booksGenreId: "001005017", page: page, hits: per).to_a)
        @backbooks.concat(RakutenWebService::Books::Book.search(title: "C++", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'back', data: @backbooks }
    end

    def infrastructure
        page = params[:page] || 1
        per = params[:per] || (10 / 8)
        @infra_books = []
        @infra_books.concat(RakutenWebService::Books::Book.search(title: "AWS", booksGenreId: "001005017", page: page, hits: per).to_a)
        @infra_books.concat(RakutenWebService::Books::Book.search(title: "GCP", booksGenreId: "001005017", page: page, hits: per).to_a)
        @infra_books.concat(RakutenWebService::Books::Book.search(title: "Azure", booksGenreId: "001005017", page: page, hits: per).to_a)
        @infra_books.concat(RakutenWebService::Books::Book.search(title: "Docker", booksGenreId: "001005017", page: page, hits: per).to_a)
        @infra_books.concat(RakutenWebService::Books::Book.search(title: "Kubernetes", booksGenreId: "001005017", page: page, hits: per).to_a)
        @infra_books.concat(RakutenWebService::Books::Book.search(title: "Terraform", booksGenreId: "001005017", page: page, hits: per).to_a)
        @infra_books.concat(RakutenWebService::Books::Book.search(title: "Ansible", booksGenreId: "001005017", page: page, hits: per).to_a)
        @infra_books.concat(RakutenWebService::Books::Book.search(title: "Puppet", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'infra', data: @infra_books }
    end

    def web_development
        page = params[:page] || 1
        per = params[:per] || 10
        @web_books = []
        @web_books = (RakutenWebService::Books::Book.search(title: "Web 開発", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'web', data: @web_books }
    end

    def useful_book
        page = params[:page] || 1
        per = params[:per] || 10
        @useful_books = []
        @useful_books.concat(RakutenWebService::Books::Book.search(title: "リーダブルコード", booksGenreId: "001005017", page: page, hits: per).to_a)
        @useful_books.concat(RakutenWebService::Books::Book.search(title: "達人プログラマー", booksGenreId: "001005017", page: page, hits: per).to_a)
        @useful_books.concat(RakutenWebService::Books::Book.search(title: "情熱プログラマー", booksGenreId: "001005017", page: page, hits: per).to_a)
        render json: { status: 'useful_books', data: @useful_books }
    end
end
