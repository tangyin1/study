import pygame
import sys
import openpyxl
from pygame.locals import *

class Load_Resources():

	def load_music(path,volume):
		pygame.mixer.music.load(path)
		pygame.mixer.music.set_volume(volume)

	# def load_sound(path,volume):
	# 	pygame.mixer.Sound("sound\\bullet.wav")
	# 	bullet_sound.set_volume(0.2)
	def load_sound(path, volume):
		bullet_sound = pygame.mixer.Sound(path)  # 创建 Sound 实例
		bullet_sound.set_volume(volume)
		return bullet_sound  # 返回实例

class Excel():
	def open(path):
		openpyxl.load_workbook(path) #打开excel

		

