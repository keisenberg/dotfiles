# Initialization

* Select region
	* Netherlands
* Written and Spoken Languages
	* Customise settings
		* Preferred Languages
			* English (UK)
		* Input Sources
			* U.S.
			* German
		* Dictation
			* English (United Kingdom)
* Sign In with Your Apple ID
	* Apple ID
		* Set Up Later :: **Click**
* Create a Computer Account
	* Full name :: **Dummy User**
	* Account name :: **duser**
	* Password :: **`<obfuscated>`**
* Express Set Up
	* Customise Settings
		* Enable Location Services on this Mac :: **Selected**
		* Share Mac Analytics with Apple :: **Deselected**
		* Share crash and usage data with app developers :: **Deselected**
* Screen Time
	* Set Up Later :: **Click**
* Siri
	* Enable Ask Siri :: **Deselected**
* Choose Your Look
	* Auto :: **Selected**

# First login :: Dummy User :: duser

* Application :: Terminal
	```
	% sudo scutil --set ComputerName <hostname>
	% sudo scutil --set LocalHostName <hostname>
	% sudo scutil --set HostName <FQDN>

	% sudo dscl . -create /Groups/keisenberg
	% sudo dscl . -append /Groups/keisenberg gid 10000
	% sudo dscl . -append /Groups/keisenberg passwd "*"
	% sudo dscl . -create /Users/keisenberg
	% sudo dscl . -create /Users/keisenberg PrimaryGroupID 10000
	% sudo dscl . -create /Users/keisenberg NFSHomeDirectory /Users/keisenberg
	% sudo dscl . -create /Users/keisenberg RealName "Klaus Eisenberg"
	% sudo dscl . -create /Users/keisenberg UniqueID 10000
	% sudo dscl . -create /Users/keisenberg UserShell /bin/zsh
	% sudo dscl . -append /Groups/admin GroupMembership keisenberg
	% sudo dscl . -append /Groups/staff GroupMembership keisenberg
	% sudo dscl . -append /Groups/wheel GroupMembership keisenberg
	% sudo passwd keisenberg
	```

* System Preferences
	* Security & Privacy
		* FileVault
			* Turn On FileVault...
				* Create a recovery key and do not use my iCloud account :: **Selected**
				* Continue :: **Click**
				* Recovery key :: **Note down**
			* Enable Users
				* Klaus Eisenberg :: **Enable User**
					* Klaus Eisenberg :: **Specify password**
				* Continue :: **Click**

# First login :: Klaus Eisenberg :: keisenberg

* Sign In with Your Apple ID
	* Apple ID
		* **Designated Apple ID e-mail address**
* iCloud Keychain
	* Would you like to use iCloud Keychain on this Mac? :: **Set up later**
* Express Set Up
	* Customise Settings
		* Share Mac Analytics with Apple :: **Deselected**
		* Share crash and usage data with app developers :: **Deselected**
* Screen Time
	* Set Up Later :: **Click**
* Siri
	* Enable Ask Siri :: **Deselected**
* All your files and photos in iCloud
	* Store files from Documents and Desktop in iCloud Drive :: **Deselected**
	* Store photos and videos in iCloud Photos :: **Deselected**
* Choose Your Look
	* Auto :: **Selected**
* System Preferences
	* Users & Groups
		* Dummy User
			* Delete user
				* Delete the home folder :: **Selected**
				* Delete User :: **Click**
	* Apple ID
		* iCloud
			* iCloud Drive :: **Deselected**
				* If you turn off iCloud Drive ... :: **Remove from Mac**
			* Photos :: **Deselected**
			* Contacts :: **Deselected**
			* Mail :: **Deselected**
			* Calendars :: **Deselected**
			* Reminders :: **Deselected**
			* Safari :: **Deselected**
			* Notes :: **Deselected**
			* Siri :: **Deselected**
			* Keychain :: **Deselected**
			* Find My Mac :: **Selected**
				* Allow Find My Mac to use ... :: **Allow**
					* Options
						* Find My Mac :: **On**
						* Offline Finding :: **On**
			* Stocks :: **Deselected**
				* Do you want to keep a copy ... :: **Delete from My Mac**
			* Home :: **Deselected**
		* Media & Purchases
			* Free Downloads :: **Never Require**
			* Purchases and In-App Purchases :: **Require after 15 minutes**
* Application :: App Store
	* Download Xcode
* **Restart**


# Second login :: Klaus Eisenberg :: keisenberg

* Application :: Terminal
	```
	% sudo xcodebuild -license
	% sudo xcode-select --install
	% curl --fail --location --silent https://git.io/chezmoi | sh
	% $HOME/bin/chezmoi init --apply --verbose https://keisenberg:<obfuscated>@github.com/keisenberg/dotfiles-v7g.git
	```
* Installations :: Manual
	* Bitdefender
	* Little Snitch
	* Microsoft Office
		* Postinstallation :: Run :: Microsoft AutoUpdate
	* Logitech G HUB (only @ node.szg.kpw.obfuscated.tld)

