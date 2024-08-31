import jieba
import wordcloud
import os
import requests
from PIL import Image
import numpy as np
from bs4 import BeautifulSoup

stop_words = ['的', '地', '得']
mask_image = np.array(Image.open("img.png"))
save_path = 'D:\desktop\Hit-a-Plane-master\Hit-a-Plane-master\ciyun'

def get_chapter_text(url):
    response = requests.get(url)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        content_div = soup.find('div', class_='content')
        if content_div:
            text = content_div.get_text(strip=True)
            return text
        else:
            print("未找到正文")
            return None

def write_to_txt(chapter_number, chapter_text):
    file_path = os.path.join(save_path, f'第{chapter_number}章.txt')
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(chapter_text)
        print(f"第{chapter_number}章小说内容已写入文件")

def create_wordcloud(chapter_number):
    file_path = os.path.join(save_path, f'第{chapter_number}章.txt')
    if os.path.exists(file_path):
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()
            word_list = jieba.lcut(content)
            word_list = [word for word in word_list if word not in stop_words and len(word) > 1]
            string = ' '.join(word_list)
            wc = wordcloud.WordCloud(
                mask=mask_image,
                max_words=500,
                max_font_size=700,
                width=1000,
                height=1000,
                background_color='white',
                font_path='simsun.ttc',
                scale=15
            )
            wc.generate(string)
            wc.to_file(f'第{chapter_number}章词云图.png')
            print(f"第{chapter_number}章小说的词云图已生成")
    else:
        print(f"第{chapter_number}章的文本文件不存在")

def main():
    base_url = "https://www.bqgui.cc/book/66"
    for i in range(7, 10):
        url = f"{base_url}/{i}.html"
        chapter_text = get_chapter_text(url)
        if chapter_text:
            write_to_txt(i, chapter_text)
        else:
            print(f"第{i}章无法获取文本内容")
        create_wordcloud(i)

if __name__ == "__main__":
    main()