package main

import (
	"encoding/json"
	"io/ioutil"
	"log"
	"net/http"
	"time"

	"github.com/gorilla/mux"
)

type News struct {
	Status       string `json:"status"`
	TotalResults int    `json:"totalResults"`
	Articles     []struct {
		Source struct {
			ID   string `json:"id"`
			Name string `json:"name"`
		} `json:"source"`
		Author      string    `json:"author"`
		Title       string    `json:"title"`
		Description string    `json:"description"`
		URL         string    `json:"url"`
		URLToImage  string    `json:"urlToImage"`
		PublishedAt time.Time `json:"publishedAt"`
		Content     string    `json:"content"`
	} `json:"articles"`
}

func returnAll(w http.ResponseWriter, r *http.Request) {
	url := "http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=5d1de7750d294d0b93a5a9816ce4b18c"

	req, _ := http.NewRequest("GET", url, nil)

	//req.Header.Add("key", "df5133bfa2e5b64eb48200c65a53898e")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	var aa News
	json.Unmarshal(body, &aa)
	json.NewEncoder(w).Encode(&aa)

}

func main() {
	router := mux.NewRouter()
	router.HandleFunc("/getNews", returnAll).Methods("GET")
	http.Handle("/", router)
	log.Fatal(http.ListenAndServe(":54321", router))
}
