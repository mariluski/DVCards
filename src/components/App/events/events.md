what are these event IDS
=========================
ok, the events ids are a way to manage the events in the system, they are used to identify the events and to manage the event handlers.

## Card management

Event 1: Gets card. arguments: card_id
Event 2: Creates card. arguments: card_id
Event 3: Updates card. arguments: card_id
Event 4: Deletes card. arguments: card_id

## Errors
Event 5: Notify owners. arguments: error_message: text (optional, if not provided, the error handeler will generate one)
Event 6: Page shutdown. arguments: error_message: text (optional, will only work if the page is still running)
Event 7: Notify users. arguments: error_message: text (optional, if not provided, there will be none)
## Banned
Event 8: User got banned. arguments: ban_reason: text, duration: lenght in hours, user_id: user_id
Event 9: User got unbanned. arguments: user_id, unban_reason: text
Event 10: User got permanently banned: arguments: ban_reason: text, user_id: user_id
Event 11: User got unpermanently banned: arguments: user_id, unban_reason:
Event 12: Ban appeal got sent. arguments: user_id: user_id, appeal_reason: text
Event 13: Ban appeal got accepted. arguments: user_id: user_id, appeal_reason:
## Server-side errors
Event 14: Server shut down. arguments: reason: server_errors.shutdown_reasons
Event 15: Server restart. arguments: reason: server_errors.shutdown_reasons
Event 16: Unexpected shut-down. (error-handeler will show users a generated error message after servers shutdown)
Event 17: Server hacked (no args)
## Important code broke
Event 18: Code broke. arguments: error_message: text fix: text
Event 19: Error Handeler broke. arguments: error_message: text, fix: text

## that were the 17 events.

NOTE: don't use the dedicated error handeler, instead, use the main one for security and simplicity
