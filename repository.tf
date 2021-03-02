locals {
  legacy_public_repositories = {
    "0mq-tutorial" : {
      description = "Introduction to ZeroMQ"
    }
    "Buffer_overflow" : {
      description = "Example of Buffer Overflow"

    }
    "CLI-Calculator" : {
      description = "Implement tokenizer, scanner, and parser for a simple calculator"

    }
    "Compilers" : {}
    "Data-structures-and-algorithm" : {}
    "dockerized-applications" : {}
    "github-mangement" : {
      description         = "Managing Github Repositories"
      create_issue_labels = true

    }
    "go-pomodoro" : {
      description = "Command line pomodoro app written in Golang"

    }
    "go-regexchecker" : {
      description = "Handy way to test regular expressions."

    }
    "gopastebin" : {
      description         = "Pastebin GO API client"
      create_issue_labels = true

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
    "LearnGolang" : {}
    "learning-k8s" : {}
    "macos-tools" : {
      description = "Utilities for MacOS"

    }
    "netdiscover" : {
      description = "netdiscover"
    }
    "packer-builder-arm-image" : {
      description = "Packer plugin for ARM images"

    }
    "react101" : {}
    "terraform-provider-pastebin" : {
      description         = "Terrafrom Pastebin API"
      create_issue_labels = true
    }
    "weighted-interval-schedulling" : {
      description = "Design and implement a dynamic programming algorithm whose worst-case running time is O(n log n)"

    }
  }

  public_repositories = {}
}

module "public_repositories" {
  for_each            = merge(local.legacy_public_repositories, local.public_repositories)
  source              = "./modules/repositories"
  name                = each.key
  description         = lookup(each.value, "description", "This is ${each.key} repository")
  create_issue_labels = lookup(each.value, "create_issue_labels", false)
}