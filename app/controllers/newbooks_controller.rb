class NewbooksController < ApplicationController

    def newbook
        page = params[:page] || 1
        per = params[:per] || 5
        @new_books = RakutenWebService::Books::Book.search(booksGenreId: "001005017",salesDate: "2024年",  page: page, hits: per)
        render json: { status: 'success', data: @new_books }
    end

    def popularity
        page = params[:page] || 1
        per = params[:per] || 10
        @popularity_books = RakutenWebService::Books::Book.search(booksGenreId: "001005017", sort: "reviewAverage", minReviewCount: 10, page: page, hits: per)
        render json: { status: 'success', data: @popularity_books }
    end

    def recommendation
        page = params[:page] || 1
        per = params[:per] || 6
        @recommendation_books = []
        @recommendation_books.concat(RakutenWebService::Books::Book.search(title: "プロを目指す人のためのTypeScript入門　安全なコードの書き方から高度な型の使い方まで", page: page, hits: per).to_a)
        @recommendation_books.concat(RakutenWebService::Books::Book.search(title: "プロを目指す人のためのRuby入門", page: page, hits: per).to_a)
        @recommendation_books.concat(RakutenWebService::Books::Book.search(title: "マスタリングTCP/IP-入門編ー", page: page, hits: per).to_a)
        @recommendation_books.concat(RakutenWebService::Books::Book.search(title: "達人に学ぶSQL徹底指南書 第2版 初級者で終わりたくないあなたへ", page: page, hits: per).to_a)
        @recommendation_books.concat(RakutenWebService::Books::Book.search(title: "リーダブルコード", page: page, hits: per).to_a)
        @recommendation_books.concat(RakutenWebService::Books::Book.search(title: "情熱プログラマー", booksGenreId: "001005017", page: page, hits: per).to_a)

        render json: { status: 'success', data: @recommendation_books }

    end
end
