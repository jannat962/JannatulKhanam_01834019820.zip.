import ipaddress # Importing the ipaddress module for validating and analyzing IP addresses.

def validate_ip_address(ip_address):
    try:
        ip_obj = ipaddress.ip_address(ip_address)  # Create an IP object from the input string; raises ValueError if invalid.
        if not ip_obj.is_private: # Check if the IP address is not private.
            print("Valid IP") # The IP is valid and not private.
        else:
            print("Invalid IP (Private IP Address)")  # The IP is private, so it's invalid as per criteria.
    except ValueError:   # Handle invalid IP address format.
        print("Invalid IP")


# usage:
ip_address = "192.168.1.1"
validate_ip_address(ip_address)  # Output: Invalid IP (Private IP Address)

ip_address = "8.8.8.8"
validate_ip_address(ip_address)  # Output: Valid IP