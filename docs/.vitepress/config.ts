import { defineConfig, type DefaultTheme } from 'vitepress'
import { withSidebar } from 'vitepress-sidebar';
import pkg from 'vitepress/package.json' with { type: 'json' }

const vitePressOptions = {
  base: '/sample-db-docs-as-code/',
  title: "Sample DB Docs as Code",
  description: "Documentation As Code",
  lastUpdated: true,
  cleanUrls: true,
  themeConfig: {
    nav: nav(),

    logo: { src: '/sample-db-docs-as-code/images/logo.png' },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/lc-semba-ryuichiro/sample-db-docs-as-code' }
    ],

    search: {
      provider: 'local'
    },

    editLink: {
      pattern:
        "https://github.com/beanslabo-atd/emmap-demo-proto-v2/edit/main/docs/:path",
      text: "Edit this page on GitHub",
    },

    footer: {
      copyright: "Copyright © 2025 Lightcafe Co., Ltd. All Rights Reserved.",
      message: "株式会社ライトカフェ",
    },
  },
};

function nav(): DefaultTheme.NavItem[] {
  return [
    { text: 'Home', link: '/' },
    { text: 'テーブル定義書', link: '/schema/README' },
    { text: 'ER図', link: 'https://lc-semba-ryuichiro.github.io/sample-db-docs-as-code/er/' },
    {
      text: pkg.version,
      items: [
        {
          text: 'Contributing',
          link: 'https://github.com/lc-semba-ryuichiro/sample-db-docs-as-code/blob/main/CONTRIBUTING.md'
        }
      ]
    }
  ]
}

const vitePressSidebarOptions = {
  // VitePress Sidebar's options here...
  documentRootPath: '/docs/',
  collapsed: false,
  capitalizeFirst: true
};

export default defineConfig(withSidebar(vitePressOptions, vitePressSidebarOptions));
