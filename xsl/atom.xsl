<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet 
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:dc="http://purl.org/dc/elements/1.1/">
  
  <xsl:output method="html" />
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Atom Feed</title>
        <style>
          /* 错误图标样式 */
          .swal-icon--error {
            border-color: #f27474;
            -webkit-animation: animateErrorIcon .5s;
            animation: animateErrorIcon .5s
          }
          .swal-icon--error__x-mark {
            position: relative;
            display: block;
            -webkit-animation: animateXMark .5s;
            animation: animateXMark .5s
          }
          .swal-icon--error__line {
            position: absolute;
            height: 5px;
            width: 47px;
            background-color: #f27474;
            display: block;
            top: 37px;
            border-radius: 2px
          }
          .swal-icon--error__line--left {
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
            left: 17px
          }
          .swal-icon--error__line--right {
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            right: 16px
          }
          @-webkit-keyframes animateErrorIcon {
            0% {
              -webkit-transform: rotateX(100deg);
              transform: rotateX(100deg);
              opacity: 0
            }
            to {
              -webkit-transform: rotateX(0deg);
              transform: rotateX(0deg);
              opacity: 1
            }
          }
          @keyframes animateErrorIcon {
            0% {
              -webkit-transform: rotateX(100deg);
              transform: rotateX(100deg);
              opacity: 0
            }
            to {
              -webkit-transform: rotateX(0deg);
              transform: rotateX(0deg);
              opacity: 1
            }
          }
          @-webkit-keyframes animateXMark {
            0% {
              -webkit-transform: scale(.4);
              transform: scale(.4);
              margin-top: 26px;
              opacity: 0
            }
            50% {
              -webkit-transform: scale(.4);
              transform: scale(.4);
              margin-top: 26px;
              opacity: 0
            }
            80% {
              -webkit-transform: scale(1.15);
              transform: scale(1.15);
              margin-top: -6px
            }
            to {
              -webkit-transform: scale(1);
              transform: scale(1);
              margin-top: 0;
              opacity: 1
            }
          }
          @keyframes animateXMark {
            0% {
              -webkit-transform: scale(.4);
              transform: scale(.4);
              margin-top: 26px;
              opacity: 0
            }
            50% {
              -webkit-transform: scale(.4);
              transform: scale(.4);
              margin-top: 26px;
              opacity: 0
            }
            80% {
              -webkit-transform: scale(1.15);
              transform: scale(1.15);
              margin-top: -6px
            }
            to {
              -webkit-transform: scale(1);
              transform: scale(1);
              margin-top: 0;
              opacity: 1
            }
          }

          /* 警告图标样式 */
          .swal-icon--warning {
            border-color: #f8bb86;
            -webkit-animation: pulseWarning .75s infinite alternate;
            animation: pulseWarning .75s infinite alternate
          }
          .swal-icon--warning__body {
            width: 5px;
            height: 47px;
            top: 10px;
            border-radius: 2px;
            margin-left: -2px
          }
          .swal-icon--warning__body,
          .swal-icon--warning__dot {
            position: absolute;
            left: 50%;
            background-color: #f8bb86
          }
          .swal-icon--warning__dot {
            width: 7px;
            height: 7px;
            border-radius: 50%;
            margin-left: -4px;
            bottom: -11px
          }
          @-webkit-keyframes pulseWarning {
            0% {
              border-color: #f8d486
            }
            to {
              border-color: #f8bb86
            }
          }
          @keyframes pulseWarning {
            0% {
              border-color: #f8d486
            }
            to {
              border-color: #f8bb86
            }
          }

          /* 成功图标样式 */
          .swal-icon--success {
            border-color: #a5dc86
          }
          .swal-icon--success:after,
          .swal-icon--success:before {
            content: "";
            border-radius: 50%;
            position: absolute;
            width: 60px;
            height: 120px;
            background: #fff;
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg)
          }
          .swal-icon--success:before {
            border-radius: 120px 0 0 120px;
            top: -7px;
            left: -33px;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            -webkit-transform-origin: 60px 60px;
            transform-origin: 60px 60px
          }
          .swal-icon--success:after {
            border-radius: 0 120px 120px 0;
            top: -11px;
            left: 30px;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            -webkit-transform-origin: 0 60px;
            transform-origin: 0 60px;
            -webkit-animation: rotatePlaceholder 4.25s ease-in;
            animation: rotatePlaceholder 4.25s ease-in
          }
          .swal-icon--success__ring {
            width: 80px;
            height: 80px;
            border: 4px solid hsla(98, 55%, 69%, .2);
            border-radius: 50%;
            box-sizing: content-box;
            position: absolute;
            left: -4px;
            top: -4px;
            z-index: 2
          }
          .swal-icon--success__hide-corners {
            width: 5px;
            height: 90px;
            background-color: #fff;
            padding: 1px;
            position: absolute;
            left: 28px;
            top: 8px;
            z-index: 1;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg)
          }
          .swal-icon--success__line {
            height: 5px;
            background-color: #a5dc86;
            display: block;
            border-radius: 2px;
            position: absolute;
            z-index: 2
          }
          .swal-icon--success__line--tip {
            width: 25px;
            left: 14px;
            top: 46px;
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
            -webkit-animation: animateSuccessTip .75s;
            animation: animateSuccessTip .75s
          }
          .swal-icon--success__line--long {
            width: 47px;
            right: 8px;
            top: 38px;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            -webkit-animation: animateSuccessLong .75s;
            animation: animateSuccessLong .75s
          }
          @-webkit-keyframes rotatePlaceholder {
            0% {
              -webkit-transform: rotate(-45deg);
              transform: rotate(-45deg)
            }
            5% {
              -webkit-transform: rotate(-45deg);
              transform: rotate(-45deg)
            }
            12% {
              -webkit-transform: rotate(-405deg);
              transform: rotate(-405deg)
            }
            to {
              -webkit-transform: rotate(-405deg);
              transform: rotate(-405deg)
            }
          }
          @keyframes rotatePlaceholder {
            0% {
              -webkit-transform: rotate(-45deg);
              transform: rotate(-45deg)
            }
            5% {
              -webkit-transform: rotate(-45deg);
              transform: rotate(-45deg)
            }
            12% {
              -webkit-transform: rotate(-405deg);
              transform: rotate(-405deg)
            }
            to {
              -webkit-transform: rotate(-405deg);
              transform: rotate(-405deg)
            }
          }
          @-webkit-keyframes animateSuccessTip {
            0% {
              width: 0;
              left: 1px;
              top: 19px
            }
            54% {
              width: 0;
              left: 1px;
              top: 19px
            }
            70% {
              width: 50px;
              left: -8px;
              top: 37px
            }
            84% {
              width: 17px;
              left: 21px;
              top: 48px
            }
            to {
              width: 25px;
              left: 14px;
              top: 45px
            }
          }
          @keyframes animateSuccessTip {
            0% {
              width: 0;
              left: 1px;
              top: 19px
            }
            54% {
              width: 0;
              left: 1px;
              top: 19px
            }
            70% {
              width: 50px;
              left: -8px;
              top: 37px
            }
            84% {
              width: 17px;
              left: 21px;
              top: 48px
            }
            to {
              width: 25px;
              left: 14px;
              top: 45px
            }
          }
          @-webkit-keyframes animateSuccessLong {
            0% {
              width: 0;
              right: 46px;
              top: 54px
            }
            65% {
              width: 0;
              right: 46px;
              top: 54px
            }
            84% {
              width: 55px;
              right: 0;
              top: 35px
            }
            to {
              width: 47px;
              right: 8px;
              top: 38px
            }
          }
          @keyframes animateSuccessLong {
            0% {
              width: 0;
              right: 46px;
              top: 54px
            }
            65% {
              width: 0;
              right: 46px;
              top: 54px
            }
            84% {
              width: 55px;
              right: 0;
              top: 35px
            }
            to {
              width: 47px;
              right: 8px;
              top: 38px
            }
          }

          /* 信息图标样式 */
          .swal-icon--info {
            border-color: #c9dae1
          }
          .swal-icon--info:before {
            width: 5px;
            height: 29px;
            bottom: 17px;
            border-radius: 2px;
            margin-left: -2px
          }
          .swal-icon--info:after,
          .swal-icon--info:before {
            content: "";
            position: absolute;
            left: 50%;
            background-color: #c9dae1
          }
          .swal-icon--info:after {
            width: 7px;
            height: 7px;
            border-radius: 50%;
            margin-left: -3px;
            top: 19px
          }

          /* 通用图标样式 */
          .swal-icon {
            width: 80px;
            height: 80px;
            border-width: 4px;
            border-style: solid;
            border-radius: 50%;
            padding: 0;
            position: relative;
            box-sizing: content-box;
            margin: 20px auto
          }
          .swal-icon:first-child {
            margin-top: 32px
          }
          .swal-icon--custom {
            width: auto;
            height: auto;
            max-width: 100%;
            border: none;
            border-radius: 0
          }
          .swal-icon img {
            max-width: 100%;
            max-height: 100%
          }

          /* 标题样式 */
          .swal-title {
            color: rgba(0, 0, 0, .65);
            font-weight: 600;
            text-transform: none;
            position: relative;
            display: block;
            padding: 13px 16px;
            font-size: 27px;
            line-height: normal;
            text-align: center;
            margin-bottom: 0
          }
          .swal-title:first-child {
            margin-top: 26px
          }
          .swal-title:not(:first-child) {
            padding-bottom: 0
          }
          .swal-title:not(:last-child) {
            margin-bottom: 13px
          }

          /* 文本样式 */
          .swal-text {
            font-size: 16px;
            position: relative;
            float: none;
            line-height: normal;
            vertical-align: top;
            text-align: left;
            display: inline-block;
            margin: 0;
            padding: 0 10px;
            font-weight: 400;
            color: rgba(0, 0, 0, .64);
            max-width: calc(100% - 20px);
            overflow-wrap: break-word;
            box-sizing: border-box
          }
          .swal-text:first-child {
            margin-top: 45px
          }
          .swal-text:last-child {
            margin-bottom: 45px
          }

          /* 页脚样式 */
          .swal-footer {
            text-align: right;
            padding-top: 13px;
            margin-top: 13px;
            padding: 13px 16px;
            border-radius: inherit;
            border-top-left-radius: 0;
            border-top-right-radius: 0
          }
          .swal-button-container {
            margin: 5px;
            display: inline-block;
            position: relative
          }

          /* 按钮样式 */
          .swal-button {
            background-color: #7cd1f9;
            color: #fff;
            border: none;
            box-shadow: none;
            border-radius: 5px;
            font-weight: 600;
            font-size: 14px;
            padding: 10px 24px;
            margin: 0;
            cursor: pointer
          }
          .swal-button:not([disabled]):hover {
            background-color: #78cbf2
          }
          .swal-button:active {
            background-color: #70bce0
          }
          .swal-button:focus {
            outline: none;
            box-shadow: 0 0 0 1px #fff, 0 0 0 3px rgba(43, 114, 165, .29)
          }
          .swal-button[disabled] {
            opacity: .5;
            cursor: default
          }
          .swal-button::-moz-focus-inner {
            border: 0
          }
          .swal-button--cancel {
            color: #555;
            background-color: #efefef
          }
          .swal-button--cancel:not([disabled]):hover {
            background-color: #e8e8e8
          }
          .swal-button--cancel:active {
            background-color: #d7d7d7
          }
          .swal-button--cancel:focus {
            box-shadow: 0 0 0 1px #fff, 0 0 0 3px rgba(116, 136, 150, .29)
          }
          .swal-button--danger {
            background-color: #e64942
          }
          .swal-button--danger:not([disabled]):hover {
            background-color: #df4740
          }
          .swal-button--danger:active {
            background-color: #cf423b
          }
          .swal-button--danger:focus {
            box-shadow: 0 0 0 1px #fff, 0 0 0 3px rgba(165, 43, 43, .29)
          }

          /* 内容区域样式 */
          .swal-content {
            padding: 0 20px;
            margin-top: 20px;
            font-size: medium
          }
          .swal-content:last-child {
            margin-bottom: 20px
          }
          .swal-content__input,
          .swal-content__textarea {
            -webkit-appearance: none;
            background-color: #fff;
            border: none;
            font-size: 14px;
            display: block;
            box-sizing: border-box;
            width: 100%;
            border: 1px solid rgba(0, 0, 0, .14);
            padding: 10px 13px;
            border-radius: 2px;
            transition: border-color .2s
          }
          .swal-content__input:focus,
          .swal-content__textarea:focus {
            outline: none;
            border-color: #6db8ff
          }
          .swal-content__textarea {
            resize: vertical
          }

          /* 加载状态 */
          .swal-button--loading {
            color: transparent
          }
          .swal-button--loading~.swal-button__loader {
            opacity: 1
          }
          .swal-button__loader {
            position: absolute;
            height: auto;
            width: 43px;
            z-index: 2;
            left: 50%;
            top: 50%;
            -webkit-transform: translateX(-50%) translateY(-50%);
            transform: translateX(-50%) translateY(-50%);
            text-align: center;
            pointer-events: none;
            opacity: 0
          }
          .swal-button__loader div {
            display: inline-block;
            float: none;
            vertical-align: baseline;
            width: 9px;
            height: 9px;
            padding: 0;
            border: none;
            margin: 2px;
            opacity: .4;
            border-radius: 7px;
            background-color: hsla(0, 0%, 100%, .9);
            transition: background .2s;
            -webkit-animation: swal-loading-anim 1s infinite;
            animation: swal-loading-anim 1s infinite
          }
          .swal-button__loader div:nth-child(3n+2) {
            -webkit-animation-delay: .15s;
            animation-delay: .15s
          }
          .swal-button__loader div:nth-child(3n+3) {
            -webkit-animation-delay: .3s;
            animation-delay: .3s
          }
          @-webkit-keyframes swal-loading-anim {
            0% {
              opacity: .4
            }
            20% {
              opacity: .4
            }
            50% {
              opacity: 1
            }
            to {
              opacity: .4
            }
          }
          @keyframes swal-loading-anim {
            0% {
              opacity: .4
            }
            20% {
              opacity: .4
            }
            50% {
              opacity: 1
            }
            to {
              opacity: .4
            }
          }

          /* 覆盖层样式 */
          .swal-overlay {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            text-align: center;
            font-size: 0;
            overflow-y: auto;
            background-color: rgba(0, 0, 0, .4);
            z-index: 10000;
            pointer-events: none;
            opacity: 0;
            transition: opacity .3s
          }
          .swal-overlay:before {
            content: " ";
            display: inline-block;
            vertical-align: middle;
            height: 100%
          }
          .swal-overlay--show-modal {
            opacity: 1;
            pointer-events: auto
          }
          .swal-overlay--show-modal .swal-modal {
            opacity: 1;
            pointer-events: auto;
            box-sizing: border-box;
            -webkit-animation: showSweetAlert .3s;
            animation: showSweetAlert .3s;
            will-change: transform
          }

          /* 模态框样式 */
          .swal-modal {
            width: 478px;
            opacity: 0;
            pointer-events: none;
            background-color: #fff;
            text-align: center;
            border-radius: 5px;
            position: static;
            margin: 20px auto;
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: scale(1);
            transform: scale(1);
            -webkit-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
            z-index: 10001;
            transition: opacity .2s, -webkit-transform .3s;
            transition: transform .3s, opacity .2s;
            transition: transform .3s, opacity .2s, -webkit-transform .3s
          }
          @media (max-width:500px) {
            .swal-modal {
              width: calc(100% - 20px)
            }
          }
          @-webkit-keyframes showSweetAlert {
            0% {
              -webkit-transform: scale(1);
              transform: scale(1)
            }
            1% {
              -webkit-transform: scale(.5);
              transform: scale(.5)
            }
            45% {
              -webkit-transform: scale(1.05);
              transform: scale(1.05)
            }
            80% {
              -webkit-transform: scale(.95);
              transform: scale(.95)
            }
            to {
              -webkit-transform: scale(1);
              transform: scale(1)
            }
          }
          @keyframes showSweetAlert {
            0% {
              -webkit-transform: scale(1);
              transform: scale(1)
            }
            1% {
              -webkit-transform: scale(.5);
              transform: scale(.5)
            }
            45% {
              -webkit-transform: scale(1.05);
              transform: scale(1.05)
            }
            80% {
              -webkit-transform: scale(.95);
              transform: scale(.95)
            }
            to {
              -webkit-transform: scale(1);
              transform: scale(1)
            }
          }

          /* 博客自定义样式 */
          :root {
            --bg-color: #f8fafc;
            --text-color: #1e293b;
            --card-bg: rgba(255, 255, 255, 0.8);
            --border-color: #e2e8f0;
            --accent-color: #4f46e5;
            --muted-color: #64748b;
            --overlay: rgba(255, 255, 255, 0.5);
            --header-text-light: #1f2937;
            --header-muted-light: #6b7280;
            --subscribe-bg-light: #f3f4f6;
            --header-text-dark: #f3f4f6;
            --header-muted-dark: #9ca3af;
            --subscribe-bg-dark: #1f2937;
            --header-text: var(--header-text-light);
            --header-muted: var(--header-muted-light);
            --subscribe-bg: var(--subscribe-bg-light);
          }
          @media (prefers-color-scheme: dark) {
            :root {
              --bg-color: #0f172a;
              --text-color: #f8fafc;
              --card-bg: rgba(30, 41, 59, 0.8);
              --border-color: #334155;
              --accent-color: #818cf8;
              --muted-color: #94a3b8;
              --overlay: rgba(15, 23, 42, 0.5);
              --header-text: var(--header-text-dark);
              --header-muted: var(--header-muted-dark);
              --subscribe-bg: var(--subscribe-bg-dark);
            }
          }
          * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
          }
          body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            line-height: 1.5;
            color: var(--text-color);
            background-color: var(--bg-color);
            min-height: 100vh;
            -webkit-font-smoothing: antialiased;
            background-image: url('https://bu.dusays.com/2025/06/15/684ddd2726b50.webp');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
          }
          body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: var(--overlay);
            backdrop-filter: blur(5px);
            z-index: -1;
          }
          a {
            color: var(--accent-color);
            text-decoration: none;
          }
          a:hover {
            text-decoration: underline;
          }
          .container {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            padding: 2rem 1rem;
          }
          .header {
            padding: 2rem 0;
            color: var(--header-text);
            text-align: left;
            max-width: 800px;
            margin: 0 auto;
          }
          .header-top {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            margin-bottom: 1rem;
            padding-bottom: 1rem;
            border-bottom: 1px dashed var(--header-text);
          }
          .header-avatar svg {
            flex-shrink: 0;
            color: var(--header-text);
          }
          .header-title {
            font-size: 1.75rem;
            font-weight: 700;
          }
          .header-description-cn,
          .header-description-en {
            margin-bottom: 1rem;
            font-size: 1rem;
            color: var(--header-text);
            line-height: 1.6;
          }
          .header-subscribe {
            margin-top: 2rem;
            padding: 1rem;
            background: var(--subscribe-bg);
            border-radius: 0.5rem;
            border-left: 4px solid var(--header-text);
            font-size: 0.95rem;
            color: var(--header-muted);
          }
          .header-subscribe a {
            color: var(--header-text);
            font-weight: bold;
            text-decoration: underline;
            transition: color 0.3s ease;
          }
          .header-subscribe a:hover {
            color: rgb(9, 147, 197);
          }
          .article-list {
            display: grid;
            gap: 1.5rem;
          }
          .article-card {
            background-color: var(--card-bg);
            backdrop-filter: blur(5px);
            border-radius: 0.8rem;
            padding: 1.5rem;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            border: 1px solid var(--border-color);
            transition: transform 0.2s, box-shadow 0.2s;
          }
          .article-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
          }
          .article-title {
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
          }
          .article-meta {
            display: flex;
            gap: 1rem;
            color: var(--muted-color);
            font-size: 0.875rem;
            margin-bottom: 1rem;
          }
          .article-summary {
            margin-bottom: 1rem;
            color: var(--text-color);
          }
          .article-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 0.5rem;
            margin-top: 1rem;
          }
          .tag {
            background-color: var(--border-color);
            color: var(--text-color);
            padding: 0.25rem 0.5rem;
            border-radius: 0.25rem;
            font-size: 0.75rem;
          }
          .footer {
            margin-top: 3rem;
            padding: 2rem 1rem;
            text-align: center;
            color: var(--muted-color);
            font-size: 1.0rem;
            transition: color 0.2s ease-in-out;
          }
          .footer-line {
            margin: 0.5rem 0;
          }
          .footer-line a,
          .footer-line span {
            color: var(--muted-color, #6b7280);
            text-decoration: none;
            margin: 0 0.5rem;
            transition: color 0.3s ease;
          }
          .footer-line a:hover {
            color: rgb(50, 124, 189);
          }
          .footer-line span {
            user-select: none;
          }

          /* 响应式组件样式 */
          .homeindex[data-v-7eb2bc79] {
            margin-top: 12px;
            overflow-y: auto;
            max-height: 675px;
            min-height: 600px;
          }
          /* ...其他组件样式省略... */
        </style>
      </head>
      <body>
        <div class="container">
          <div class="header">
            <div class="header-top">
              <div class="header-avatar">
                <!-- 头像占位 -->
                <svg width="48" height="48" viewBox="0 0 24 24">
                  <circle cx="12" cy="12" r="10" fill="/svg/rss-avatar.svg" />
                </svg>
              </div>
              <div>
                <h1 class="header-title">Roxy_Magicの咖啡馆</h1>
              </div>
            </div>
            
            <div class="header-description-cn">
              Roxy_Magicの咖啡馆，提供建站教程、学习笔记分享、生活点滴，个人经验，融合技术开发与人文思考，定期更新深度指南与创意灵感，给大家提供更多帮助。
            </div>
            <div class="header-description-en">
              MortalCat’s Blog, Sharing tutorials, coding notes, life moments, personal experiences, blending tech and humanities, with regularly updated guides and creative inspiration.
            </div>
            
            <div class="header-subscribe">
              不要诧异于异常精美的页面，你可以直接使用 RSS 阅读器比如： 
              <a href="https://feedly.com/" target="_blank">Feedly</a>, 
              <a href="https://www.inoreader.com/" target="_blank">Inoreader</a>, 
              <a href="https://newsblur.com/" target="_blank">Newsblur</a>, 
              <a href="https://follow.it/" target="_blank">Follow</a> 
              或者 RSS Reader 等工具，来订阅这个 RSS 源链接。
            </div>
          </div>

          <!-- Atom 条目列表 -->
          <div class="article-list">
            <xsl:for-each select="atom:feed/atom:entry">
              <div class="article-card">
                <h2 class="article-title">
                  <a href="{atom:link/@href}">
                    <xsl:value-of select="atom:title"/>
                  </a>
                </h2>
                
                <div class="article-meta">
                  <span>
                    <xsl:value-of select="substring(atom:published, 1, 10)"/>
                  </span>
                  <span>
                    <xsl:value-of select="atom:author/atom:name"/>
                  </span>
                </div>
                
                <div class="article-summary">
                  <xsl:value-of select="atom:summary"/>
                </div>
                
                <div class="article-tags">
                  <xsl:for-each select="atom:category">
                    <span class="tag">
                      <xsl:value-of select="@term"/>
                    </span>
                  </xsl:for-each>
                </div>
              </div>
            </xsl:for-each>
          </div>
          
          <div class="footer">
            <div class="footer-line">
              <span>© 2025</span>
              <span>
                <a href="https://blog.230721.xyz." target="_blank">Roxy_Magicの咖啡馆</a>
              </span>
            </div>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>