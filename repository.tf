locals {
  public_repositories = {
    "0mq-tutorial" : {
      description = "Introduction to ZeroMQ"
    }
    "Buffer_overflow" : {
      description = "Example of Buffer Overflow"

    }
    "CLI-Calculator" : {
      description = "Implement tokenizer, scanner, and parser for a simple calculator"

    }
    "Compilers" : {
      description = "Compilers"

    }
    "Data-structures-and-algorithm" : {
      description = "Data Structures and Algorithm"

    }
    "dockerized-applications" : {
      description = "Dockerized Applications"

    }
    "github-mangement" : {
      description = "Managing Github Repositories"

    }
    "go-pomodoro" : {
      description = "Command line pomodoro app written in Golang"

    }
    "go-regexchecker" : {
      description = "Handy way to test regular expressions."

    }
    "gopastebin" : {
      description = "Pastebin GO API client"

    }
    "gopsutil" : {
      description = "psutil for golang"

    }
    "graphite-stresser" : {
      description = "A stress testing tool for Graphite"

    }
    "hugo-coder" : {
      description = "A minimalist blog theme for hugo."

    }
    "LearnGolang" : {
      description = "Learn golang"

    }
    "learning-k8s" : {
      description = "Learning Kubernetes"

    }
    "macos-tools" : {
      description = "Utilities for MacOS"

    }
    "netdiscover" : {
      description = "netdiscover"

    }
    "packer-builder-arm-image" : {
      description = "Packer plugin for ARM images"

    }
    "react101" : {
      description = "Learning React"

    }
    "terraform-provider-pastebin" : {
      description = "Terrafrom Pastebin API"

    }
    "weighted-interval-schedulling" : {
      description = "Design and implement a dynamic programming algorithm whose worst-case running time is O(n log n)"

    }
  }
}

resource "github_repository" "public" {
  for_each = local.public_repositories
  topics   = ["repo-managed-by-terraform"]

  name        = each.key
  description = each.value.description


  archive_on_destroy     = true
  delete_branch_on_merge = true
  auto_init              = true
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  vulnerability_alerts   = true
  visibility             = "public"
}
