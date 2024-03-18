# Import two modules
import bs4 as bs
import urllib.request

# Make a request to ung.edu
source = urllib.request.urlopen('https://ung.edu')
soup = bs.BeautifulSoup(source,"html.parser")

#print(soup)


print("\n==================Print Title=====================\n")
print(soup.title)

#Find all clickable links
print("\n==================FIND URLS=====================\n")
URLs=soup.find_all('a')
print(type(URLs))

for link in URLs:
    print(link.get('href'))

print("\n==================FIND Javascript=====================\n")
scriptTags=soup.find_all('script')
for script in scriptTags:
    if(script.get('src') != None):
        print(script.get('src'))



