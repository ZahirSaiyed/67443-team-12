//
//  Constants.swift
//  movin-music
//
//  Created by Zahir Saiyed on 10/6/22.
//

import Foundation
let accessTokenKey = "access-token-key"
let redirectUri = URL(string:"movin-music://")!
let spotifyClientId = "68a030e90ef24518aca116587cb35926"
let spotifyClientSecretKey = "d9d7f1df1e364310af2a4d18052d3ee3"

/*
Scopes let you specify exactly what types of data your application wants to
access, and the set of scopes you pass in your call determines what access
permissions the user is asked to grant.
For more information, see https://developer.spotify.com/web-api/using-scopes/.
*/
let scopes: SPTScope = [
														.userReadEmail, .userReadPrivate,
														.userReadPlaybackState, .userModifyPlaybackState, .userReadCurrentlyPlaying,
														.streaming, .appRemoteControl,
														.playlistReadCollaborative, .playlistModifyPublic, .playlistReadPrivate, .playlistModifyPrivate,
														.userLibraryModify, .userLibraryRead,
														.userTopRead, .userReadPlaybackState, .userReadCurrentlyPlaying,
														.userFollowRead, .userFollowModify,
												]
let stringScopes = [
												"user-read-email", "user-read-private",
												"user-read-playback-state", "user-modify-playback-state", "user-read-currently-playing",
												"streaming", "app-remote-control",
												"playlist-read-collaborative", "playlist-modify-public", "playlist-read-private", "playlist-modify-private",
												"user-library-modify", "user-library-read",
												"user-top-read", "user-read-playback-position", "user-read-recently-played",
												"user-follow-read", "user-follow-modify",
										]
