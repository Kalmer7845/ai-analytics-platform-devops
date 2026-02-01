package main

import (
  "net/http"
  "github.com/gin-gonic/gin"
)

func main() {
  r := gin.Default()

  r.GET("/health", func(c *gin.Context) {
    c.JSON(http.StatusOK, gin.H{
      "status": "ok",
      "version": "v1",
    })
  })

  r.POST("/event", func(c *gin.Context) {
    c.Status(http.StatusAccepted)
  })

  r.Run(":8080")
}
