locals {
  public_repositories = {
    "0mq-tutorial" : {
      description = "Introduction to ZeroMQ"
    }
    "ansible-role-filebeat" : {
      description = "Ansible Role - Filebeat for ELK stack"
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
    "ruby" : {
      description = "The Ruby Programming Language"

    }
    "ruby-saml" : {
      description = "SAML SSO for Ruby"

    }
    "terraform-provider-pastebin" : {
      description = "Terrafrom Pastebin API"

    }
    "vault-cookbook" : {
      description = "Application cookbook for installing and configuring Vault."

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

  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
  visibility           = "public"
}