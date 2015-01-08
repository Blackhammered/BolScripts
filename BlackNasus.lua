assert(load(Base64Decode("aWYgbXlIZXJvLmNoYXJOYW1lIH49ICJOYXN1cyIgdGhlbiByZXR1cm4gZW5kDQoNCmxvY2FsIHZlcnNpb24gPSAxLjAxDQpsb2NhbCBBVVRPVVBEQVRFID0gdHJ1ZQ0KDQpyZXF1aXJlICJTT1ciDQpyZXF1aXJlICJWUHJlZGljdGlvbiINCg0KbG9jYWwgU0NSSVBUX05BTUUgPSAiQmxhY2tOYXN1cyINCmxvY2FsIFNPVVJDRUxJQl9VUkwgPSAiaHR0cHM6Ly9yYXcuZ2l0aHViLmNvbS9UaGVSZWFsU291cmNlL3B1YmxpYy9tYXN0ZXIvY29tbW9uL1NvdXJjZUxpYi5sdWEiDQpsb2NhbCBTT1VSQ0VMSUJfUEFUSCA9IExJQl9QQVRILi4iU291cmNlTGliLmx1YSINCmlmIEZpbGVFeGlzdChTT1VSQ0VMSUJfUEFUSCkgdGhlbg0KICByZXF1aXJlKCJTb3VyY2VMaWIiKQ0KZWxzZQ0KICBET1dOTE9BRElOR19TT1VSQ0VMSUIgPSB0cnVlDQogIERvd25sb2FkRmlsZShTT1VSQ0VMSUJfVVJMLCBTT1VSQ0VMSUJfUEFUSCwgZnVuY3Rpb24oKSBwcmludCgiUmVxdWlyZWQgbGlicmFyaWVzIGRvd25sb2FkZWQgc3VjY2Vzc2Z1bGx5LCBwbGVhc2UgcmVsb2FkIikgZW5kKQ0KZW5kDQoNCmlmIERPV05MT0FESU5HX1NPVVJDRUxJQiB0aGVuIHByaW50KCJEb3dubG9hZGluZyByZXF1aXJlZCBsaWJyYXJpZXMsIHBsZWFzZSB3YWl0Li4uIikgcmV0dXJuIGVuZA0KDQppZiBBVVRPVVBEQVRFIHRoZW4NCiAgU291cmNlVXBkYXRlcihTQ1JJUFRfTkFNRSwgdmVyc2lvbiwgInJhdy5naXRodWIuY29tIiwgIi9CbGFja2hhbW1lcmVkL0JvbFNjcmlwdHMvbWFzdGVyLyIuLlNDUklQVF9OQU1FLi4iLmx1YSIsIFNDUklQVF9QQVRIIC4uIEdldEN1cnJlbnRFbnYoKS5GSUxFX05BTUUsICIvQmxhY2toYW1tZXJlZC9Cb2xTY3JpcHRzL21hc3Rlci8iLi5TQ1JJUFRfTkFNRS4uIi52ZXJzaW9uIik6Q2hlY2tVcGRhdGUoKQ0KZW5kDQoNCmxvY2FsIFJlcXVpcmVJID0gUmVxdWlyZSgiU291cmNlTGliIikNClJlcXVpcmVJOkFkZCgidlByZWRpY3Rpb24iLCAiaHR0cHM6Ly9yYXcuZ2l0aHViLmNvbS9IZWxsc2luZy9Cb0wvbWFzdGVyL2NvbW1vbi9WUHJlZGljdGlvbi5sdWEiKQ0KUmVxdWlyZUk6QWRkKCJTT1ciLCAiaHR0cHM6Ly9yYXcuZ2l0aHViLmNvbS9IZWxsc2luZy9Cb0wvbWFzdGVyL2NvbW1vbi9TT1cubHVhIikNClJlcXVpcmVJOkFkZCgiSnVuZ2xlTGliIiwgImh0dHBzOi8vYml0YnVja2V0Lm9yZy9IZWxsc2luZy9ib3RvZmxlZ2VuZHMvcmF3L21hc3Rlci9saWIvSnVuZ2xlTGliLmx1YSIpDQoNClJlcXVpcmVJOkNoZWNrKCkNCg0KaWYgUmVxdWlyZUkuZG93bmxvYWROZWVkZWQgPT0gdHJ1ZSB0aGVuIHJldHVybiBlbmQNCg0KRGFzaExpc3QgPSB7DQogICAgICAgIFsnQWhyaSddICAgICAgICA9IHt0cnVlLCBzcGVsbCA9ICdBaHJpVHVtYmxlJ30sDQogICAgICAgIFsnQWF0cm94J10gICAgICA9IHt0cnVlLCBzcGVsbCA9ICdBYXRyb3hRJ30sDQogICAgICAgIFsnQWthbGknXSAgICAgICA9IHt0cnVlLCBzcGVsbCA9ICdBa2FsaVNoYWRvd0RhbmNlJ30sIC0tIFRhcmdldGVkIGFiaWxpdHkNCiAgICAgICAgWydBbGlzdGFyJ10gICAgID0ge3RydWUsIHNwZWxsID0gJ0hlYWRidXR0J30sIC0tIFRhcmdldGVkIGFiaWxpdHkNCiAgICAgICAgWydDb3JraSddICAgICAgID0ge3RydWUsIHNwZWxsID0gJ0NhcnBldEJvbWInfSwNCiAgICAgICAgWydEaWFuYSddICAgICAgID0ge3RydWUsIHNwZWxsID0gJ0RpYW5hVGVsZXBvcnQnfSwgLS0gVGFyZ2V0ZWQgYWJpbGl0eQ0KICAgICAgICBbJ0VsaXNlJ10gICAgICAgPSB7dHJ1ZSwgc3BlbGwgPSAnRWxpc2VTcGlkZXJRQ2FzdCd9LCAtLSBUYXJnZXRlZCBhYmlsaXR5DQogICAgICAgIFsnRmlvcmEnXSAgICAgICA9IHt0cnVlLCBzcGVsbCA9ICdGaW9yYVEnfSwgLS0gVGFyZ2V0ZWQgYWJpbGl0eQ0KICAgICAgICBbJ0ZpenonXSAgICAgICAgPSB7dHJ1ZSwgc3BlbGwgPSAnRml6elBpZXJjaW5nU3RyaWtlJ30sIC0tIFRhcmdldGVkIGFiaWxpdHkNCiAgICAgICAgWydHcmFnYXMnXSAgICAgID0ge3RydWUsIHNwZWxsID0gJ0dyYWdhc0UnfSwNCiAgICAgICAgWydHcmF2ZXMnXSAgICAgID0ge3RydWUsIHNwZWxsID0gJ0dyYXZlc01vdmUnfSwNCiAgICAgICAgWydIZWNhcmltJ10gICAgID0ge3RydWUsIHNwZWxsID0gJ0hlY2FyaW1VbHQnfSwNCiAgICAgICAgWydJcmVsaWEnXSAgICAgID0ge3RydWUsIHNwZWxsID0gJ0lyZWxpYUdhdG90c3UnfSwgLS0gVGFyZ2V0ZWQgYWJpbGl0eQ0KICAgICAgICBbJ0phcnZhbklWJ10gICAgPSB7dHJ1ZSwgc3BlbGwgPSAnamFydmFuQWRkaXRpb24nfSwgLS0gU2tpbGxzaG90L1RhcmdldGVkIGFiaWxpdHkNCiAgICAgICAgWydKYXgnXSAgICAgICAgID0ge3RydWUsIHNwZWxsID0gJ0pheExlYXBTdHJpa2UnfSwgLS0gVGFyZ2V0ZWQgYWJpbGl0eQ0KICAgICAgICBbJ0pheWNlJ10gICAgICAgPSB7dHJ1ZSwgc3BlbGwgPSAnSmF5Y2VUb1RoZVNraWVzJ30sIC0tIFRhcmdldGVkIGFiaWxpdHkNCiAgICAgICAgWydLYXNzYWRpbiddICAgID0ge3RydWUsIHNwZWxsID0gJ1JpZnRXYWxrJ30sDQogICAgICAgIFsnS2hheml4J10gICAgICA9IHt0cnVlLCBzcGVsbCA9ICdLaGF6aXhXJ30sDQogICAgICAgIFsnTGVibGFuYyddICAgICA9IHt0cnVlLCBzcGVsbCA9ICdMZWJsYW5jU2xpZGUnfSwNCiAgICAgICAgWydMZWVTaW4nXSAgICAgID0ge3RydWUsIHNwZWxsID0gJ2JsaW5kbW9ua3F0d28nfSwNCiAgICAgICAgWydMZW9uYSddICAgICAgID0ge3RydWUsIHNwZWxsID0gJ0xlb25hWmVuaXRoQmxhZGUnfSwNCiAgICAgICAgWydMdWNpYW4nXSAgICAgID0ge3RydWUsIHNwZWxsID0gJ0x1Y2lhbkUnfSwNCiAgICAgICAgWydNYWxwaGl0ZSddICAgID0ge3RydWUsIHNwZWxsID0gJ1VGU2xhc2gnfSwNCiAgICAgICAgWydNYW9rYWknXSAgICAgID0ge3RydWUsIHNwZWxsID0gJ01hb2thaVRydW5rTGluZScsfSwgLS0gVGFyZ2V0ZWQgYWJpbGl0eSANCiAgICAgICAgWydNYXN0ZXJZaSddICAgID0ge3RydWUsIHNwZWxsID0gJ0FscGhhU3RyaWtlJyx9LCAtLSBUYXJnZXRlZA0KICAgICAgICBbJ01vbmtleUtpbmcnXSAgPSB7dHJ1ZSwgc3BlbGwgPSAnTW9ua2V5S2luZ05pbWJ1cyd9LCAtLSBUYXJnZXRlZCBhYmlsaXR5DQogICAgICAgIFsnTmlkYWxlZSddICAgICA9IHt0cnVlLCBzcGVsbCA9ICdQb3VuY2UnfSwNCiAgICAgICAgWydQYW50aGVvbiddICAgID0ge3RydWUsIHNwZWxsID0gJ1BhbnRoZW9uVyd9LCAtLSBUYXJnZXRlZCBhYmlsaXR5DQogICAgICAgIFsnUGFudGhlb24nXSAgICA9IHt0cnVlLCBzcGVsbCA9ICdQYW50aGVvblJKdW1wJ30sDQogICAgICAgIFsnUGFudGhlb24nXSAgICA9IHt0cnVlLCBzcGVsbCA9ICdQYW50aGVvblJGYWxsJ30sDQogICAgICAgIFsnUG9wcHknXSAgICAgICA9IHt0cnVlLCBzcGVsbCA9ICdQb3BweUhlcm9pY0NoYXJnZSd9LCAtLSBUYXJnZXRlZCBhYmlsaXR5DQogICAgICAgIFsnUmFtbXVzJ10gICAgICA9IHt0cnVlLCBzcGVsbCA9ICdQb3dlckJhbGwnfSwNCiAgICAgICAgWydSZW5la3RvbiddICAgID0ge3RydWUsIHNwZWxsID0gJ1JlbmVrdG9uU2xpY2VBbmREaWNlJ30sDQogICAgICAgIFsnUml2ZW4nXSAgICAgICA9IHt0cnVlLCBzcGVsbCA9ICdSaXZlbkZlaW50J30sDQogICAgICAgIFsnU2VqdWFuaSddICAgICA9IHt0cnVlLCBzcGVsbCA9ICdTZWp1YW5pQXJjdGljQXNzYXVsdCd9LA0KICAgICAgICBbJ1NoeXZhbmEnXSAgICAgPSB7dHJ1ZSwgc3BlbGwgPSAnU2h5dmFuYVRyYW5zZm9ybUNhc3QnfSwNCiAgICAgICAgWydTaGVuJ10gICAgICAgID0ge3RydWUsIHNwZWxsID0gJ1NoZW5TaGFkb3dEYXNoJ30sDQogICAgICAgIFsnVGFsb24nXSAgICAgICA9IHt0cnVlLCBzcGVsbCA9ICdUYWxvbkN1dHRocm9hdCd9LA0KICAgICAgICBbJ1RyaXN0YW5hJ10gICAgPSB7dHJ1ZSwgc3BlbGwgPSAnUm9ja2V0SnVtcCd9LA0KICAgICAgICBbJ1RyeW5kYW1lcmUnXSAgPSB7dHJ1ZSwgc3BlbGwgPSAnU2xhc2gnfSwNCiAgICAgICAgWydWaSddICAgICAgICAgID0ge3RydWUsIHNwZWxsID0gJ1ZpUSd9LA0KICAgICAgICBbJ1hpblpoYW8nXSAgICAgPSB7dHJ1ZSwgc3BlbGwgPSAnWGVuWmhhb1N3ZWVwJ30sIC0tIFRhcmdldGVkIGFiaWxpdHkNCiAgICAgICAgWydZYXN1byddICAgICAgID0ge3RydWUsIHNwZWxsID0gJ1lhc3VvRGFzaFdyYXBwZXInfSAtLSBUYXJnZXRlZCBhYmlsaXR5DQp9DQoNCi0tLS0tLS0tLS0tLSBHbG9iYWxzIC0tLS0tLS0tLS0tLQ0KDQpsb2NhbCBlbmVteU1pbmlvbnMgPSBuaWwNCmxvY2FsIGp1bmdsZU1vYnMgICA9IG5pbA0KbG9jYWwganVuZ2xlTGliICAgID0gbmlsDQpsb2NhbCBtZW51ICAgICAgICAgPSBuaWwNCg0KbG9jYWwgYnVmZkFjdGl2ZSA9IGZhbHNlDQpsb2NhbCBidWZmU3RhY2tzID0gMA0KbG9jYWwgYnVmZkRhbWFnZSA9IDANCg0KbG9jYWwgYXR0YWNrU3BlZWQgPSAwDQoNCmxvY2FsIGxhc3RBdHRhY2sgICAgID0gMA0KbG9jYWwgbGFzdFdpbmRVcFRpbWUgPSAwDQpsb2NhbCBsYXN0QXR0YWNrQ0QgICA9IDANCg0KbG9jYWwgZGVidWcgPSB7fQ0KDQotLS0tLS0tLS0tLSBDb25zdGFudHMgLS0tLS0tLS0tLS0NCg0KbG9jYWwgVFJVRV9SQU5HRSA9IDEyNSArIHBsYXllcjpHZXREaXN0YW5jZShwbGF5ZXIubWluQkJveCkNCmxvY2FsIEJVRkZfTkFNRSAgPSAiTmFzdXNRIg0KbG9jYWwgREFNQUdFX1EgICA9IHsgMzAsIDUwLCA3MCwgOTAsIDExMCB9DQoNCmxvY2FsIEJBU0VfQVRUQUNLU1BFRUQgICAgICAgPSAwLjYzOA0KDQpsb2NhbCBJVEVNUyA9IHsgWzMwNTddID0geyBuYW1lID0gIlNoZWVuIiwgICAgICAgICAgICB1bmlxdWUgPSAiU1BFTExCTEFERSIsIGJ1ZmZOYW1lID0gInNoZWVuIiwgICAgICAgICAgYnVmZkFjdGl2ZSA9IGZhbHNlLCBib251c0RhbWFnZSA9IDAsIG11bHRpcGxpZXIgPSAxIH0sDQogICAgICAgICAgICAgICAgWzMwMjVdID0geyBuYW1lID0gIkljZWJvcm4gR2F1bnRsZXQiLCB1bmlxdWUgPSAiU1BFTExCTEFERSIsIGJ1ZmZOYW1lID0gIml0ZW1mcm96ZW5maXN0IiwgYnVmZkFjdGl2ZSA9IGZhbHNlLCBib251c0RhbWFnZSA9IDAsIG11bHRpcGxpZXIgPSAxLjI1fSB9DQoNCmZ1bmN0aW9uIE9uTG9hZCgpDQoNCiAgVlAgICAgPSBWUHJlZGljdGlvbigpDQogIGlTT1cgID0gU09XKFZQKQ0KICBqdW5nbGVMaWIgPSBKdW5nbGVMaWIoKQ0KDQogICAgdHMgPSBUYXJnZXRTZWxlY3RvcihUQVJHRVRfTE9XX0hQLCA2MDApDQogICAgdHMubmFtZSA9ICJOYXN1cyINCiAgICANCiAgICBlbmVteU1pbmlvbnMgPSBtaW5pb25NYW5hZ2VyKE1JTklPTl9FTkVNWSwgMTAwMCwgbXlIZXJvLCBNSU5JT05fU09SVF9NQVhIRUFMVEhfREVDKQ0KDQogICAgbWVudSA9IHNjcmlwdENvbmZpZygiQmxhY2tOYXN1cyIsICJCbGFja05hc3VzIikNCg0KICAgIG1lbnU6YWRkU3ViTWVudSgiT3Jid2FsayIsICJPcmJ3YWxrIikNCiAgICAgIGlTT1c6TG9hZFRvTWVudShtZW51Lk9yYndhbGspDQogICAgICAgICAgICANCiAgICBtZW51OmFkZFN1Yk1lbnUoIk1hc3RlcmllcyIsICJtYXN0ZXJpZXMiKQ0KICAgICAgICBtZW51Lm1hc3RlcmllczphZGRQYXJhbSgiYnV0Y2hlciIsICJCdXRjaGVyIiwgICAgICBTQ1JJUFRfUEFSQU1fU0xJQ0UsIDAsIDAsIDEsIDApDQogICAgICAgIG1lbnUubWFzdGVyaWVzOmFkZFBhcmFtKCJhcmNhbmUiLCAgIkFyY2FuZSBCbGFkZSIsIFNDUklQVF9QQVJBTV9TTElDRSwgMCwgMCwgMSwgMCkNCiAgICAgICAgbWVudS5tYXN0ZXJpZXM6YWRkUGFyYW0oImhhdm9jIiwgICAiSGF2b2MiLCAgICAgICAgU0NSSVBUX1BBUkFNX1NMSUNFLCAwLCAwLCAxLCAwKQ0KICAgICAgICANCiAgICBtZW51OmFkZFN1Yk1lbnUoIkNvbWJvIHNldHRpbnMiLCAiY29tYm9zZXQiKQ0KICAgICAgICBtZW51LmNvbWJvc2V0OmFkZFBhcmFtKCJhdXRvUiIsICJBdXRvIFVsdCIsIFNDUklQVF9QQVJBTV9PTk9GRiwgdHJ1ZSkNCiAgICAgICAgbWVudS5jb21ib3NldDphZGRQYXJhbSgibWluUiIsICJBdXRvIFVsdCB3aGVuIFggZW5lbWllcyBpbiByYW5nZSIsIFNDUklQVF9QQVJBTV9TTElDRSwgMSwgMCwgNSwgMCkNCiAgICAgICAgbWVudS5jb21ib3NldDphZGRQYXJhbSgia3MiLCAiS1Mgd2l0aCBRIGFuZCBFIiwgU0NSSVBUX1BBUkFNX09OT0ZGLCB0cnVlKQ0KICAgICAgICBtZW51LmNvbWJvc2V0OmFkZFBhcmFtKCJnYXBDbG9zZSIsICJBdXRvIFcgR2FwY2xvc2VycyIsIFNDUklQVF9QQVJBTV9PTk9GRiwgdHJ1ZSkNCg0KICAgIG1lbnU6YWRkU3ViTWVudSgiSnVuZ2xlIEZhcm0gU2V0dGluZ3MiLCAianVuZ2xlIikNCiAgICAgICAgbWVudS5qdW5nbGU6YWRkUGFyYW0oImFjdGl2ZSIsICAiRmFybSBqdW5nbGUiLCAgICAgICAgICAgICBTQ1JJUFRfUEFSQU1fT05LRVlET1dOLCBmYWxzZSwgc3RyaW5nLmJ5dGUoIlYiKSkNCiAgICAgICAgbWVudS5qdW5nbGU6YWRkUGFyYW0oIm9yYndhbGsiLCAiT3Jid2FsayB3aGlsZSBmYXJtaW5nIiwgICBTQ1JJUFRfUEFSQU1fT05PRkYsICAgICB0cnVlKQ0KICAgICAgICBtZW51Lmp1bmdsZTphZGRQYXJhbSgic21hcnQiLCAgICJTbWFydCBjb21ibyAoU21pdGUgKyBRKSIsIFNDUklQVF9QQVJBTV9PTk9GRiwgICAgIHRydWUpDQogICAgICAgIG1lbnUuanVuZ2xlOmFkZFBhcmFtKCJkcmF3IiwgICAgIkRyYXcganVuZ2xlIHN0dWZmIiwgICAgICAgU0NSSVBUX1BBUkFNX09OT0ZGLCAgICAgdHJ1ZSkNCg0KICAgIG1lbnU6YWRkU3ViTWVudSgiRGVidWcgSW5mb3JtYXRpb24iLCAiZGVidWciKQ0KICAgICAgICBtZW51LmRlYnVnOmFkZFBhcmFtKCJsYXN0ZG1nIiwgICAgICJMYXN0IFEgZGFtYWdlIGNhbGN1bGF0ZWQ6ICIsICBTQ1JJUFRfUEFSQU1fSU5GTywgMCk7DQogICAgICAgIG1lbnUuZGVidWc6YWRkUGFyYW0oImp1bmdsZUNvdW50IiwgIkp1bmdsZSBtaW5pb25zIGFyb3VuZCB5b3U6ICIsIFNDUklQVF9QQVJBTV9JTkZPLCAwKQ0KICAgICAgICBtZW51LmRlYnVnOmFkZFBhcmFtKCJhdHRhY2tTcGVlZCIsICJBdHRhY2sgU3BlZWQ6ICIsICAgICAgICAgICAgICBTQ1JJUFRfUEFSQU1fSU5GTywgMCk7DQogICAgICAgIG1lbnUuZGVidWc6YWRkUGFyYW0oImNvb2xkb3duUSIsICAgIkNvb2xkb3duIGZvciBROiAiLCAgICAgICAgICAgIFNDUklQVF9QQVJBTV9JTkZPLCAwKQ0KICAgICAgICBtZW51LmRlYnVnOmFkZFBhcmFtKCJoaXRzV2hpbGVDRCIsICJBQSBoaXRzIHdoaWxlIFEgY29vbGRvd246ICIsICBTQ1JJUFRfUEFSQU1fSU5GTywgMCk7DQoNCiAgICBtZW51OmFkZFBhcmFtKCJkaXNhYmxlZCIsICAgICJEaXNhYmxlIFN0YWNraW5nICAgICAgICAgICAgICAgIiwgU0NSSVBUX1BBUkFNX09OS0VZRE9XTiwgZmFsc2UsIHN0cmluZy5ieXRlKCJYIikpDQogICAgbWVudTphZGRQYXJhbSgiZGlzYWJsZWRUIiwgICAiRGlzYWJsZSBTdGFja2luZyAoVG9nZ2xlKSAgICAgICAgICAgICAgICIsIFNDUklQVF9QQVJBTV9PTktFWVRPR0dMRSwgZmFsc2UsIHN0cmluZy5ieXRlKCJZIikpDQogICAgbWVudTphZGRQYXJhbSgiZHJhd1JhbmdlIiwgICAiRHJhdyBhdXRvLWF0dGFjayByYW5nZSIsICAgICAgICAgICBTQ1JJUFRfUEFSQU1fT05PRkYsICAgICAgIHRydWUpDQogICAgbWVudTphZGRQYXJhbSgiZHJhd0luZGljIiwgICAiRHJhdyBkYW1hZ2UgaW5kaWNhdG9yIG9uIGVuZW1pZXMiLCBTQ1JJUFRfUEFSQU1fT05PRkYsICAgICAgIHRydWUpDQogICAgbWVudTphZGRQYXJhbSgibWFya01pbmlvbnMiLCAiTWFyayBraWxsYWJsZSBtaW5pb25zIiwgICAgICAgICAgICBTQ1JJUFRfUEFSQU1fT05PRkYsICAgICAgIHRydWUpDQogICAgbWVudTphZGRQYXJhbSgidmVyc2lvbiIsICAgICAiSW5zdGFsbGVkIFZlcnNpb246IiwgICAgICAgICAgICAgICBTQ1JJUFRfUEFSQU1fSU5GTywgICAgICAgIHZlcnNpb24pDQogICAgbWVudTphZGRQYXJhbSgiY29tYm8iLCAiQ29tYm8iLCBTQ1JJUFRfUEFSQU1fT05LRVlET1dOLCBmYWxzZSwgMzIpDQogICAgbWVudTphZGRQYXJhbSgiZXNjYXBlIiwgIkVzY2FwZSIsIFNDUklQVF9QQVJBTV9PTktFWURPV04sIGZhbHNlLCBzdHJpbmcuYnl0ZSgiQyIpKQ0KICAgIA0KICAgIHByaW50KCI8Zm9udCBjb2xvcj1cIiMwREY4RkZcIj5CbGFja05hc3VzIExvYWRlZCBTdWNjZXNzZnVsbHk8L2ZvbnQ+ICIpDQoNCiAgICAtLVVwZGF0ZVdlYih0cnVlLCBTY3JpcHROYW1lLCBpZCwgSFdJRCkNCiAgICANCg0KZW5kDQoNCmZ1bmN0aW9uIE9uVGljaygpDQoNCiAgaWYgbWVudS5kaXNhYmxlZCB0aGVuIHRpbWVGb3JQZXJmZWN0USgpIGVuZA0KICBpZiBtZW51LmRpc2FibGVkVCB0aGVuIHRpbWVGb3JQZXJmZWN0USgpIGVuZA0KICAgIC0tIFVwZGF0ZSBkZWJ1ZyBtZW51DQogICAgbWVudS5kZWJ1Zy5sYXN0ZG1nICAgICA9IGRlYnVnWyJMYXN0RGFtYWdlIl0NCiAgICBpZiBqdW5nbGVMaWIgdGhlbiBtZW51LmRlYnVnLmp1bmdsZUNvdW50ID0ganVuZ2xlTGliOk1vYkNvdW50KHRydWUsIFRSVUVfUkFOR0UgKiAyKSBlbmQNCiAgICBtZW51LmRlYnVnLmF0dGFja1NwZWVkID0gYXR0YWNrU3BlZWQNCiAgICBtZW51LmRlYnVnLmhpdHNXaGlsZUNEID0gZGVidWdbIkhpdHNXaGlsZUNvb2xkb3duIl0NCiAgICBtZW51LmRlYnVnLmNvb2xkb3duUSAgID0gZGVidWdbIkNvb2xkb3duUSJdDQoNCiAgICAtLSBVcGRhdGUgbWluaW9uIG1hbmFnZXJzDQogICAgZW5lbXlNaW5pb25zOnVwZGF0ZSgpDQogICAgdHM6dXBkYXRlKCkNCiAgICBpU09XOkVuYWJsZUF0dGFja3MoKQ0KICAgIC0tIEl0ZW0gY2hlY2tzDQogICAgbG9jYWwgaXRlbURhbWFnZSA9IDANCiAgICBmb3IgaXRlbUlELCBlbnRyeSBpbiBwYWlycyhJVEVNUykgZG8NCiAgICAgICAgaWYgR2V0SW52ZW50b3J5U2xvdEl0ZW0oaXRlbUlEKSBhbmQgKHBsYXllcjpDYW5Vc2VTcGVsbChHZXRJbnZlbnRvcnlTbG90SXRlbShpdGVtSUQpKSA9PSBSRUFEWSBvciBJVEVNU1tpdGVtSURdLmJ1ZmZBY3RpdmUpIHRoZW4NCg0KICAgICAgICAgICAgLS0gVXBkYXRlIGJ1bnVzIGRhbWFnZQ0KICAgICAgICAgICAgSVRFTVNbaXRlbUlEXS5ib251c0RhbWFnZSA9IHBsYXllci5kYW1hZ2UgKiBJVEVNU1tpdGVtSURdLm11bHRpcGxpZXINCg0KICAgICAgICAgICAgaWYgSVRFTVNbaXRlbUlEXS5ib251c0RhbWFnZSA+IGl0ZW1EYW1hZ2UgdGhlbg0KICAgICAgICAgICAgICAgIGl0ZW1EYW1hZ2UgPSBJVEVNU1tpdGVtSURdLmJvbnVzRGFtYWdlDQogICAgICAgICAgICBlbmQNCg0KICAgICAgICBlbmQNCiAgICBlbmQNCiAgICANCiAgLS0gQ29tYm8gc2hpdA0KICBpZiBtZW51LmNvbWJvIHRoZW4NCiAgICBjb21ibygpDQogIGVuZA0KICANCiAgaWYgbWVudS5lc2NhcGUgdGhlbiBlc2NhcGUoKSBlbmQNCiAgDQogIGlmIFJyZWFkeSBhbmQgbWVudS5jb21ib3NldC5hdXRvUiB0aGVuIGF1dG91bHQoKSBlbmQNCiAgDQogIGlmIG1lbnUuY29tYm9zZXQua3MgdGhlbiBrcygpIGVuZA0KICAgIA0KICANCiAgUXJlYWR5ID0gKG15SGVybzpDYW5Vc2VTcGVsbChfUSkgPT0gUkVBRFkpDQogIFdyZWFkeSA9IChteUhlcm86Q2FuVXNlU3BlbGwoX1cpID09IFJFQURZKQ0KICBFcmVhZHkgPSAobXlIZXJvOkNhblVzZVNwZWxsKF9FKSA9PSBSRUFEWSkNCiAgUnJlYWR5ID0gKG15SGVybzpDYW5Vc2VTcGVsbChfUikgPT0gUkVBRFkpDQoNCiAgICAtLSBVcGRhdGUgYnVmZiBkYW1hZ2UNCiAgICBidWZmRGFtYWdlID0gYnVmZlN0YWNrcyArIGl0ZW1EYW1hZ2UgKyAocGxheWVyOkdldFNwZWxsRGF0YShfUSkubGV2ZWwgPiAwIGFuZCBEQU1BR0VfUVtwbGF5ZXI6R2V0U3BlbGxEYXRhKF9RKS5sZXZlbF0gb3IgMCkNCg0KICAgIC0tIFVwZGF0ZSBhdHRhY2tzcGVlZA0KICAgIGF0dGFja1NwZWVkID0gcGxheWVyLmF0dGFja1NwZWVkICogQkFTRV9BVFRBQ0tTUEVFRA0KDQogICAgLS0gUHJlY2hlY2tzDQogICAgaWYgbWVudS5kaXNhYmxlZCB0aGVuIHJldHVybiBlbmQNCiAgICBpZiBtZW51LmRpc2FibGVkVCB0aGVuIHJldHVybiBlbmQNCg0KICAgIC0tIFByZWNoZWNrcyBmb3IganVuZ2xpbmcNCiAgICBpZiBub3QgbWVudS5qdW5nbGUuYWN0aXZlIHRoZW4gcmV0dXJuIGVuZA0KDQogICAgLS0gQWxyaWdodCwgbGV0J3MgZG9vb2ggZWVlaHQhDQogICAgY2xlYXJEZW1KdW5nbGUoKQ0KDQplbmQNCg0KZnVuY3Rpb24gY29tYm8oKQ0KICBsb2NhbCBlbmVteSA9IHRzLnRhcmdldA0KICBpZiBlbmVteSA9PSBuaWwgdGhlbiByZXR1cm4gZW5kDQoNCiAgICBpZiBXcmVhZHkgYW5kIEdldERpc3RhbmNlKGVuZW15KSA8IDYwMCB0aGVuDQogICAgICBDYXN0U3BlbGwoX1csIGVuZW15KQ0KICAgIGVuZA0KDQogICAgaWYgRXJlYWR5IGFuZCBHZXREaXN0YW5jZShlbmVteSkgPCA2NTAgdGhlbg0KICAgICAgQ2FzdFNwZWxsKF9FLCBlbmVteS54LCBlbmVteS56KQ0KICAgIGVuZA0KDQogICAgaWYgUXJlYWR5IGFuZCBHZXREaXN0YW5jZShlbmVteSkgPCAzNTAgdGhlbg0KICAgICAgQ2FzdFNwZWxsKF9RKQ0KICAgICAgcGFja2V0QXR0YWNrKGVuZW15KQ0KICAgIGVuZA0KICANCmVuZA0KDQpmdW5jdGlvbiBhdXRvdWx0KCkNCg0KICBFbmVtaWVzSW5SID0gQXJlYUVuZW15Q291bnQobXlIZXJvLCA0MDApDQoNCiAgaWYgUnJlYWR5IGFuZCBFbmVtaWVzSW5SID49IG1lbnUuY29tYm9zZXQubWluUiBhbmQgbXlIZXJvLmhlYWx0aCA8IChteUhlcm8ubWF4SGVhbHRoICogKDYwIC8gMTAwKSkgdGhlbg0KICAgIENhc3RTcGVsbChfUikNCiAgZW5kDQplbmQNCiAgICANCmZ1bmN0aW9uIEFyZWFFbmVteUNvdW50KFNwb3QsIFJhbmdlKQ0KICBsb2NhbCBjb3VudCA9IDANCiAgZm9yIF8sIGVuZW15IGluIHBhaXJzKEdldEVuZW15SGVyb2VzKCkpIGRvDQogICAgaWYgZW5lbXkgYW5kIG5vdCBlbmVteS5kZWFkIGFuZCBlbmVteS52aXNpYmxlIGFuZCBHZXREaXN0YW5jZShTcG90LCBlbmVteSkgPD0gUmFuZ2UgdGhlbg0KICAgICAgY291bnQgPSBjb3VudCArIDENCiAgICBlbmQNCiAgZW5kICAgICAgICAgICAgDQogIHJldHVybiBjb3VudA0KZW5kDQoNCmZ1bmN0aW9uIGVzY2FwZSgpDQoNCiAgbXlIZXJvOk1vdmVUbyhtb3VzZVBvcy54LCBtb3VzZVBvcy56KQ0KICAgIGZvciBpPTEsIGhlcm9NYW5hZ2VyLmlDb3VudCBkbw0KICAgICAgbG9jYWwgZW5lbXkgPSBoZXJvTWFuYWdlcjpHZXRIZXJvKGkpDQogICAgICBpZiBWYWxpZFRhcmdldChlbmVteSwgNjAwKSB0aGVuDQogICAgICAgIENhc3RTcGVsbChfVywgZW5lbXkpDQogICAgICBlbmQNCiAgICBlbmQNCmVuZA0KDQpmdW5jdGlvbiBrcygpDQogIGZvciBfLCBlbmVteSBpbiBpcGFpcnMoR2V0RW5lbXlIZXJvZXMoKSkgZG8NCiAgICBpZiBHZXREaXN0YW5jZShlbmVteSkgPCA2NTAgdGhlbg0KICAgICAgbG9jYWwgcURtZyA9IGdldERtZygiUSIsIGVuZW15LCBteUhlcm8pDQogICAgICBsb2NhbCBlRG1nID0gZ2V0RG1nKCJFIiwgZW5lbXksIG15SGVybykNCiAgICAgIGlmIGVuZW15IGFuZCBub3QgZW5lbXkuZGVhZCBhbmQgR2V0RGlzdGFuY2VTcXIoZW5lbXkpIDw9IFRSVUVfUkFOR0VeMiBhbmQgZW5lbXkuaGVhbHRoIDw9IHFEbWcgYW5kIG1lbnUuY29tYm9zZXQua3MgdGhlbg0KICAgICAgICAgIENhc3RTcGVsbChfUSkNCiAgICAgICAgICBwYWNrZXRBdHRhY2soZW5lbXkpDQogICAgICBlbmQNCiAgICAgIGlmIGVuZW15IH49IG5pbCBhbmQgbm90IGVuZW15LmRlYWQgYW5kIEdldERpc3RhbmNlKGVuZW15KSA8IDY1MCBhbmQgZW5lbXkuaGVhbHRoIDw9IGVEbWcgYW5kIG1lbnUuY29tYm9zZXQua3MgdGhlbg0KICAgICAgICBDYXN0U3BlbGwoX0UsIGVuZW15LngsIGVuZW15LnopDQogICAgICBlbmQNCiAgICBlbmQNCiAgZW5kDQplbmQNCi0tW1sNCiAgICAgICAgX19fX19fXyBfXyAgIF8gX19fX19fXyAgICAgIF9fX19fX18gX19fX19fXyAgX19fX19fIF9fX19fX18gX19fX18gX18gICBfICBfX19fX18NCiB8ICAgICAgfF9fX19ffCB8IFwgIHwgfF9fX19fXyAgICAgIHxfX19fX18gfF9fX19ffCB8X19fX18vIHwgIHwgIHwgICB8ICAgfCBcICB8IHwgIF9fX18NCiB8X19fX18gfCAgICAgfCB8ICBcX3wgfF9fX19fXyAgICAgIHwgICAgICAgfCAgICAgfCB8ICAgIFxfIHwgIHwgIHwgX198X18gfCAgXF98IHxfX19fX3wNCiBdXQ0KDQpmdW5jdGlvbiB0aW1lRm9yUGVyZmVjdFEoKQ0KDQogICAgLS0gTGFuZSBtaW5pb25zDQogICAgZm9yIF8sIG1pbmlvbiBpbiBwYWlycyhlbmVteU1pbmlvbnMub2JqZWN0cykgZG8NCg0KICAgICAgICBpZiBWYWxpZFRhcmdldChtaW5pb24sIFRSVUVfUkFOR0UrNTApIHRoZW4NCg0KICAgICAgICAgICAgLS0gQ2FsY3VsYXRlIGRhbWFnZQ0KICAgICAgICAgICAgbG9jYWwgZGFtYWdlID0gY2FsY3VsYXRlRGFtYWdlKG1pbmlvbiwgYnVmZkRhbWFnZSkNCg0KICAgICAgICAgICAgaWYgbWluaW9uLmhlYWx0aCA8PSBkYW1hZ2UgdGhlbg0KICAgICAgICAgICAgICAgIC0tIFJlYWR5IFENCiAgICAgICAgICAgICAgICBpZiBub3QgYnVmZkFjdGl2ZSBhbmQgcGxheWVyOkNhblVzZVNwZWxsKF9RKSA9PSBSRUFEWSB0aGVuDQogICAgICAgICAgICAgICAgICAgIHBhY2tldENhc3QoX1EpDQogICAgICAgICAgICAgICAgICAgIHBhY2tldEF0dGFjayhtaW5pb24pDQogICAgICAgICAgICAgICAgICAgIGRlYnVnWyJMYXN0RGFtYWdlIl0gPSBkYW1hZ2UNCiAgICAgICAgICAgICAgICAgICAgYnJlYWsNCiAgICAgICAgICAgICAgICBlbmQNCg0KICAgICAgICAgICAgICAgIGlmIGJ1ZmZBY3RpdmUgdGhlbg0KICAgICAgICAgICAgICAgICAgICBwYWNrZXRBdHRhY2sobWluaW9uKQ0KICAgICAgICAgICAgICAgICAgICBkZWJ1Z1siTGFzdERhbWFnZSJdID0gZGFtYWdlDQogICAgICAgICAgICAgICAgICAgIGJyZWFrDQogICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICBlbmQNCiAgICAgICAgZW5kDQogICAgZW5kDQogICAgDQplbmQNCg0KDQotLVtbDQogX19fX18gXyAgICAgXyBfXyAgIF8gIF9fX19fXyAgICAgICAgX19fX19fXyAgICAgIF9fX19fX18gX19fX19fXyBfICAgICBfIF9fX19fX18gX19fX19fXw0KICAgfCAgIHwgICAgIHwgfCBcICB8IHwgIF9fX18gfCAgICAgIHxfX19fX18gICAgICB8X19fX19fICAgIHwgICAgfCAgICAgfCB8X19fX19fIHxfX19fX18NCiBfX3wgICB8X19fX198IHwgIFxffCB8X19fX198IHxfX19fXyB8X19fX19fICAgICAgX19fX19ffCAgICB8ICAgIHxfX19fX3wgfCAgICAgICB8ICAgICAgDQogXV0NCg0KZnVuY3Rpb24gY2xlYXJEZW1KdW5nbGUoKQ0KDQogICAgbG9jYWwgY29vbGRvd25RICAgICAgICAgPSBwbGF5ZXI6R2V0U3BlbGxEYXRhKF9RKS50b3RhbENvb2xkb3duDQogICAgZGVidWdbIkNvb2xkb3duUSJdICAgICAgPSBjb29sZG93blENCg0KICAgIGxvY2FsIGhpdHNXaGlsZUNvb2xkb3duICAgID0gbWF0aC5mbG9vcihjb29sZG93blEgLyAoMSAvIGF0dGFja1NwZWVkKSkNCiAgICBkZWJ1Z1siSGl0c1doaWxlQ29vbGRvd24iXSA9IGhpdHNXaGlsZUNvb2xkb3duDQoNCiAgICBmb3IgXywgbW9iIGluIHBhaXJzKGp1bmdsZUxpYjpHZXRKdW5nbGVNb2JzKHRydWUsIFRSVUVfUkFOR0UgKiAyKSkgZG8NCg0KICAgICAgICBsb2NhbCBkYW1hZ2VBQSA9IGNhbGN1bGF0ZURhbWFnZShtb2IpDQogICAgICAgIGxvY2FsIGRhbWFnZVEgID0gY2FsY3VsYXRlRGFtYWdlKG1vYiwgYnVmZkRhbWFnZSkNCg0KICAgICAgICBsb2NhbCBkYW1hZ2VXaGlsZUNvb2xkb3duID0gaGl0c1doaWxlQ29vbGRvd24gKiBkYW1hZ2VBQQ0KDQogICAgICAgIGlmIG1lbnUuanVuZ2xlLm9yYndhbGsgYW5kIFZhbGlkVGFyZ2V0KG1vYiwgVFJVRV9SQU5HRSkgb3Igbm90IG1lbnUuanVuZ2xlLm9yYndhbGsgYW5kIFZhbGlkVGFyZ2V0KG1vYiwgVFJVRV9SQU5HRSAqIDIpIHRoZW4NCiAgICAgICAgICAgIGlmIChkYW1hZ2VRID49IG1vYi5oZWFsdGggb3IgbW9iLmhlYWx0aCA+IGRhbWFnZVdoaWxlQ29vbGRvd24gKyBkYW1hZ2VRKSBhbmQgKHBsYXllcjpDYW5Vc2VTcGVsbChfUSkgPT0gUkVBRFkgb3IgYnVmZkFjdGl2ZSkgdGhlbg0KICAgICAgICAgICAgICAgIGlmIG5vdCBidWZmQWN0aXZlIHRoZW4gcGFja2V0Q2FzdChfUSkgZW5kDQogICAgICAgICAgICAgICAgcGFja2V0QXR0YWNrKG1vYikNCiAgICAgICAgICAgICAgICBkZWJ1Z1siTGFzdERhbWFnZSJdID0gZGFtYWdlUQ0KICAgICAgICAgICAgICAgIHJldHVybg0KICAgICAgICAgICAgZWxzZWlmIEdldFRpY2tDb3VudCgpICsgR2V0TGF0ZW5jeSgpIC8gMiA+IGxhc3RBdHRhY2sgKyBsYXN0QXR0YWNrQ0QgdGhlbg0KICAgICAgICAgICAgICAgIGlmIG1vYi5oZWFsdGggPiBkYW1hZ2VBQSB0aGVuDQogICAgICAgICAgICAgICAgICAgIHBhY2tldEF0dGFjayhtb2IpDQogICAgICAgICAgICAgICAgICAgIGRlYnVnWyJMYXN0RGFtYWdlIl0gPSBkYW1hZ2VRDQogICAgICAgICAgICAgICAgICAgIHJldHVybg0KICAgICAgICAgICAgICAgIGVuZA0KICAgICAgICAgICAgZWxzZQ0KICAgICAgICAgICAgICAgIGJyZWFrDQogICAgICAgICAgICBlbmQNCiAgICAgICAgZW5kDQoNCiAgICBlbmQNCg0KICAgIC0tIEp1bmdsZSBvcmJ3YWxrZXINCiAgICBpZiBtZW51Lmp1bmdsZS5vcmJ3YWxrIGFuZCBHZXRUaWNrQ291bnQoKSArIEdldExhdGVuY3koKSAvIDIgPiBsYXN0QXR0YWNrICsgbGFzdFdpbmRVcFRpbWUgKyAyMCB0aGVuDQogICAgICAgIG1vdmVUb01vdXNlKCkNCiAgICBlbmQNCg0KZW5kDQoNCg0KLS1bWw0KICBfX19fX18gX19fX19fXyBfXyAgIF8gX19fX19fXyAgX19fX19fIF9fX19fX18gICAgICAgICAgICAgX19fX19fXyBfX19fX19fICAgICAgICAgICAgICAgX19fX19fICBfX19fX19fIF9fX19fX18gXyAgICAgXyBfX19fX19fDQogfCAgX19fXyB8X19fX19fIHwgXCAgfCB8X19fX19fIHxfX19fXy8gfF9fX19ffCB8ICAgICAgICAgICB8ICAgICAgIHxfX19fX3wgfCAgICAgIHwgICAgICB8X19fX19dIHxfX19fX3wgfCAgICAgICB8X19fXy8gIHxfX19fX18NCiB8X19fX198IHxfX19fX18gfCAgXF98IHxfX19fX18gfCAgICBcXyB8ICAgICB8IHxfX19fXyAgICAgIHxfX19fXyAgfCAgICAgfCB8X19fX18gfF9fX19fIHxfX19fX10gfCAgICAgfCB8X19fX18gIHwgICAgXF8gX19fX19ffA0KXV0NCg0KZnVuY3Rpb24gT25Qcm9jZXNzU3BlbGwodW5pdCwgc3BlbGwpDQoNCiAgICAtLSBQcmV2ZW50IGVycm9ycw0KICAgIGlmIG5vdCB1bml0IG9yIG5vdCB1bml0LnZhbGlkIG9yIG5vdCB1bml0LmlzTWUgdGhlbiByZXR1cm4gZW5kDQogIA0KICAgIGlmIHNwZWxsLm5hbWU6bG93ZXIoKTpmaW5kKCJhdHRhY2siKSB0aGVuDQogICAgICAgIGxhc3RBdHRhY2sgPSBHZXRUaWNrQ291bnQoKSAtIEdldExhdGVuY3koKSAvIDINCiAgICAgICAgbGFzdFdpbmRVcFRpbWUgPSBzcGVsbC53aW5kVXBUaW1lICogMTAwMA0KICAgICAgICBsYXN0QXR0YWNrQ0QgPSBzcGVsbC5hbmltYXRpb25UaW1lICogMTAwMA0KICAgIGVuZA0KICAgIGlmIG1lbnUuY29tYm9zZXQuZ2FwQ2xvc2UgYW5kIFdyZWFkeSB0aGVuDQogICAgICBpZiB1bml0LnRlYW0gfj0gbXlIZXJvLnRlYW0gdGhlbg0KICAgICAgICBsb2NhbCBzcGVsbE5hbWUgPSBzcGVsbC5uYW1lDQogICAgICAgIGlmIERhc2hMaXN0W3VuaXQuY2hhck5hbWVdIGFuZCBzcGVsbE5hbWUgPT0gRGFzaExpc3RbdW5pdC5jaGFyTmFtZV0uc3BlbGwgYW5kIEdldERpc3RhbmNlKHVuaXQpIDwgMjAwMCB0aGVuDQogICAgICAgICAgaWYgc3BlbGwudGFyZ2V0IH49IG5pbCBhbmQgc3BlbGwudGFyZ2V0Lm5hbWUgPT0gbXlIZXJvLm5hbWUgb3IgRGFzaExpc3RbdW5pdC5jaGFyTmFtZV0uc3BlbGwgPT0gJ2JsaW5kbW9ua3F0d28nIHRoZW4NCiAgICAgICAgICAgIENhc3RTcGVsbChfVywgdW5pdCkNCiAgICAgICAgICBlbmQNCiAgICAgICAgZW5kDQogICAgICBlbmQNCiAgICBlbmQNCmVuZA0KDQpmdW5jdGlvbiBPblJlY3ZQYWNrZXQocCkNCg0KICAgIGlmIHAuaGVhZGVyID09IDB4RkUgYW5kIHAuc2l6ZSA9PSAweEMgdGhlbg0KICAgICAgICBwLnBvcyA9IDENCiAgICAgICAgbG9jYWwgbmV0d29ya0lEID0gcDpEZWNvZGVGKCkNCg0KICAgICAgICBpZihuZXR3b3JrSUQgPT0gcGxheWVyLm5ldHdvcmtJRCkgdGhlbg0KICAgICAgICAgICAgcC5wb3MgPSA4DQogICAgICAgICAgICBidWZmU3RhY2tzID0gcDpEZWNvZGU0KCkNCiAgICAgICAgZW5kDQogICAgZW5kDQoNCmVuZA0KDQpmdW5jdGlvbiBPbkdhaW5CdWZmKHVuaXQsIGJ1ZmYpDQoNCiAgICAtLSBWYWxpZGF0ZSB1bml0DQogICAgaWYgbm90IHVuaXQgb3Igbm90IHVuaXQuaXNNZSB0aGVuIHJldHVybiBlbmQNCg0KICAgIC0tIFZhbGlkYXRlIGJ1ZmYNCiAgICBpZiBub3QgYnVmZiBvciBub3QgYnVmZi5uYW1lIHRoZW4gcmV0dXJuIGVuZA0KDQoNCiAgICAtLSBDaGVjayBidWZmDQogICAgaWYgYnVmZi5uYW1lID09IEJVRkZfTkFNRSB0aGVuDQogICAgICAgIGJ1ZmZBY3RpdmUgPSB0cnVlDQogICAgZW5kDQoNCiAgICAtLSBDaGVjayBpdGVtIGJ1ZmZzDQogICAgZm9yIGl0ZW1JRCwgZW50cnkgaW4gcGFpcnMoSVRFTVMpIGRvDQogICAgICAgIGlmIEdldEludmVudG9yeVNsb3RJdGVtKGl0ZW1JRCkgYW5kIElURU1TW2l0ZW1JRF0uYnVmZk5hbWUgPT0gYnVmZi5uYW1lIHRoZW4NCiAgICAgICAgICAgIElURU1TW2l0ZW1JRF0uYnVmZkFjdGl2ZSA9IHRydWUNCiAgICAgICAgICAgIGJyZWFrDQogICAgICAgIGVuZA0KICAgIGVuZA0KDQplbmQNCg0KZnVuY3Rpb24gT25Mb3NlQnVmZih1bml0LCBidWZmKQ0KDQogICAgLS0gVmFsaWRhdGUgdW5pdA0KICAgIGlmIG5vdCB1bml0IG9yIG5vdCB1bml0LmlzTWUgdGhlbiByZXR1cm4gZW5kDQoNCiAgICAtLSBWYWxpZGF0ZSBidWZmDQogICAgaWYgbm90IGJ1ZmYgb3Igbm90IGJ1ZmYubmFtZSB0aGVuIHJldHVybiBlbmQNCg0KDQogICAgLS0gQ2hlY2sgYnVmZg0KICAgIGlmIGJ1ZmYubmFtZSA9PSBCVUZGX05BTUUgdGhlbg0KICAgICAgICBidWZmQWN0aXZlID0gZmFsc2UNCiAgICBlbmQNCg0KICAgIC0tIENoZWNrIGl0ZW0gYnVmZnMNCiAgICBmb3IgaXRlbUlELCBlbnRyeSBpbiBwYWlycyhJVEVNUykgZG8NCiAgICAgICAgaWYgR2V0SW52ZW50b3J5U2xvdEl0ZW0oaXRlbUlEKSBhbmQgSVRFTVNbaXRlbUlEXS5idWZmTmFtZSA9PSBidWZmLm5hbWUgdGhlbg0KICAgICAgICAgICAgSVRFTVNbaXRlbUlEXS5idWZmQWN0aXZlID0gZmFsc2UNCiAgICAgICAgICAgIGJyZWFrDQogICAgICAgIGVuZA0KICAgIGVuZA0KDQplbmQNCg0KDQotLVtbDQogX19fX19fICAgX19fX19fIF9fX19fX18gXyAgXyAgXyBfX19fXyBfXyAgIF8gIF9fX19fXyBfX19fX19fDQogfCAgICAgXCB8X19fX18vIHxfX19fX3wgfCAgfCAgfCAgIHwgICB8IFwgIHwgfCAgX19fXyB8X19fX19fDQogfF9fX19fLyB8ICAgIFxfIHwgICAgIHwgfF9ffF9ffCBfX3xfXyB8ICBcX3wgfF9fX19ffCBfX19fX198DQpdXQ0KDQpmdW5jdGlvbiBPbkRyYXcoKQ0KDQogICAgLS0gRHJhdyBvdXIgcmFuZ2UNCiAgICBpZiBtZW51LmRyYXdSYW5nZSB0aGVuIERyYXdDaXJjbGUzRChwbGF5ZXIueCwgcGxheWVyLnksIHBsYXllci56LCBUUlVFX1JBTkdFLCAxLCBBUkdCKDI1NSwgMjU1LCA1MCwgIDApLCAxMCkgZW5kDQoNCiAgICAtLSBEcmF3IG1pbmlvbnMgd2hpY2ggYXJlIHJlYWR5IHRvIGdldCBraWxsZWQNCiAgICBpZiBtZW51Lm1hcmtNaW5pb25zIHRoZW4NCiAgICAgICAgZm9yIF8sIG1pbmlvbiBpbiBwYWlycyhlbmVteU1pbmlvbnMub2JqZWN0cykgZG8NCg0KICAgICAgICAgICAgaWYgY2FsY3VsYXRlRGFtYWdlKG1pbmlvbiwgYnVmZkRhbWFnZSkgPj0gbWluaW9uLmhlYWx0aCB0aGVuDQogICAgICAgICAgICAgICAgRHJhd0NpcmNsZTNEKG1pbmlvbi54LCBtaW5pb24ueSwgbWluaW9uLnosIFZlY3RvcihtaW5pb24ueCwgbWluaW9uLnksIG1pbmlvbi56KTpkaXN0KFZlY3RvcihtaW5pb24ubWluQkJveC54LCBtaW5pb24ubWluQkJveC55LCBtaW5pb24ubWluQkJveC56KSksIDEsIEFSR0IoMjU1LCAyNTUsIDUwLCAgMCksIDEwKQ0KICAgICAgICAgICAgZW5kDQoNCiAgICAgICAgZW5kDQogICAgZW5kDQoNCiAgICAtLSBEcmF3IGRhbWFnZSBpbmRpY2F0b3JzDQogICAgaWYgbWVudS5kcmF3SW5kaWMgdGhlbg0KICAgICAgICBmb3IgXywgZW5lbXkgaW4gaXBhaXJzKEdldEVuZW15SGVyb2VzKCkpIGRvDQogICAgICAgICAgICBpZiAoVmFsaWRUYXJnZXQoZW5lbXkpKSB0aGVuDQogICAgICAgICAgICAgICAgRHJhd0luZGljYXRvcihlbmVteSwgZW5lbXkuaGVhbHRoIC0gbWF0aC5mbG9vcihjYWxjdWxhdGVEYW1hZ2UoZW5lbXksIGJ1ZmZEYW1hZ2UpKSkNCiAgICAgICAgICAgIGVuZA0KICAgICAgICBlbmQNCiAgICBlbmQNCg0KICAgIC0tIERyYXcganVuZ2xlIHN0dWZmDQogICAgaWYgbWVudS5qdW5nbGUuZHJhdyBhbmQganVuZ2xlTGliIHRoZW4NCiAgICAgICAgbG9jYWwgcHJpb3JpdHlNb2IgPSBqdW5nbGVMaWI6R2V0SnVuZ2xlTW9icyh0cnVlLCBUUlVFX1JBTkdFICogMilbMV0NCg0KICAgICAgICBpZiBwcmlvcml0eU1vYiB0aGVuIERyYXdDaXJjbGUzRChwcmlvcml0eU1vYi54LCBwcmlvcml0eU1vYi55LCBwcmlvcml0eU1vYi56LCBWZWN0b3IocHJpb3JpdHlNb2IueCwgcHJpb3JpdHlNb2IueSwgcHJpb3JpdHlNb2Iueik6ZGlzdChWZWN0b3IocHJpb3JpdHlNb2IubWluQkJveC54LCBwcmlvcml0eU1vYi5taW5CQm94LnksIHByaW9yaXR5TW9iLm1pbkJCb3gueikpLCAxLCBBUkdCKDI1NSwgMjU1LCA1MCwgIDApLCAxMCkgZW5kDQogICAgZW5kDQoNCmVuZA0KDQotLSBDcmVkaXRzIHRvIFppa2thaCBmb3IgdGhpcywganVzdCBhZGRlZCB2YWxpZGF0aW9ucw0KZnVuY3Rpb24gR2V0SFBCYXJQb3MoZW5lbXkpDQoNCiAgICBlbmVteS5iYXJEYXRhID0gR2V0RW5lbXlCYXJEYXRhKCkNCiAgICBsb2NhbCBiYXJQb3MgPSBHZXRVbml0SFBCYXJQb3MoZW5lbXkpDQogICAgbG9jYWwgYmFyUG9zT2Zmc2V0ID0gR2V0VW5pdEhQQmFyT2Zmc2V0KGVuZW15KQ0KDQogICAgLS0gVmFsaWRhdGlvbg0KICAgIGlmIGVuZW15LmJhckRhdGEgPT0gbmlsIG9yIGJhclBvcyA9PSBuaWwgb3IgYmFyUG9zT2Zmc2V0ID09IG5pbCB0aGVuIHJldHVybiBlbmQNCg0KICAgIGxvY2FsIGJhck9mZnNldCA9IHsgeCA9IGVuZW15LmJhckRhdGEuUGVyY2VudGFnZU9mZnNldC54LCB5ID0gZW5lbXkuYmFyRGF0YS5QZXJjZW50YWdlT2Zmc2V0LnkgfQ0KICAgIGxvY2FsIGJhclBvc1BlcmNlbnRhZ2VPZmZzZXQgPSB7IHggPSBlbmVteS5iYXJEYXRhLlBlcmNlbnRhZ2VPZmZzZXQueCwgeSA9IGVuZW15LmJhckRhdGEuUGVyY2VudGFnZU9mZnNldC55IH0NCiAgICBsb2NhbCBCYXJQb3NPZmZzZXRYID0gMTcxDQogICAgbG9jYWwgQmFyUG9zT2Zmc2V0WSA9IDQ2DQogICAgbG9jYWwgQ29ycmVjdGlvblkgPSAgMA0KICAgIGxvY2FsIFN0YXJ0SHBQb3MgPSAzMQ0KICAgIGJhclBvcy54ID0gYmFyUG9zLnggKyAoYmFyUG9zT2Zmc2V0LnggLSAwLjUgKyBiYXJQb3NQZXJjZW50YWdlT2Zmc2V0LngpICogQmFyUG9zT2Zmc2V0WCArIFN0YXJ0SHBQb3MNCiAgICBiYXJQb3MueSA9IGJhclBvcy55ICsgKGJhclBvc09mZnNldC55IC0gMC41ICsgYmFyUG9zUGVyY2VudGFnZU9mZnNldC55KSAqIEJhclBvc09mZnNldFkgKyBDb3JyZWN0aW9uWSANCiAgICAgICAgICAgICAgICAgICAgICAgIA0KICAgIGxvY2FsIFN0YXJ0UG9zID0gVmVjdG9yKGJhclBvcy54ICwgYmFyUG9zLnksIDApDQogICAgbG9jYWwgRW5kUG9zID0gIFZlY3RvcihiYXJQb3MueCArIDEwOCAsIGJhclBvcy55ICwgMCkNCg0KICAgIHJldHVybiBWZWN0b3IoU3RhcnRQb3MueCwgU3RhcnRQb3MueSwgMCksIFZlY3RvcihFbmRQb3MueCwgRW5kUG9zLnksIDApDQoNCmVuZA0KDQotLSBDcmVkaXRzIHRvIGhvbmRhNyBmb3IgdGhpcywganVzdCBhZGRlZCB2YWxpZGF0aW9ucyBhbmQgZGlmZmVyZW50IGNvbG9ycw0KZnVuY3Rpb24gRHJhd0luZGljYXRvcih1bml0LCBoZWFsdGgpDQoNCiAgICBsb2NhbCBTUG9zLCBFUG9zID0gR2V0SFBCYXJQb3ModW5pdCkNCg0KICAgIC0tIFZhbGlkYXRpb24NCiAgICBpZiBTUG9zID09IG5pbCBvciBFUG9zID09IG5pbCB0aGVuIHJldHVybiBlbmQNCg0KICAgIGxvY2FsIGJhcmxlbmdodCA9IEVQb3MueCAtIFNQb3MueA0KICAgIGxvY2FsIFBvc2l0aW9uID0gU1Bvcy54ICsgKGhlYWx0aCAvIHVuaXQubWF4SGVhbHRoKSAqIGJhcmxlbmdodA0KICAgIGlmIFBvc2l0aW9uIDwgU1Bvcy54IHRoZW4NCiAgICAgICAgUG9zaXRpb24gPSBTUG9zLngNCiAgICBlbmQNCiAgICBEcmF3VGV4dCgifCIsIDEzLCBQb3NpdGlvbiwgU1Bvcy55KzEwLCAoaGVhbHRoID4gMCBhbmQgQVJHQigyNTUsIDAsIDI1NSwgMCkgb3IgQVJHQigyNTUsIDI1NSwgMCwgMCkpKQ0KDQplbmQNCg0KDQotLVtbDQogIF9fX19fICBfX19fX19fIF8gICAgIF8gX19fX19fXyAgX19fX19fICAgICAgX19fX19fXyBfX19fX19fIF8gICAgIF8gX19fX19fXyBfX19fX19fDQogfCAgICAgfCAgICB8ICAgIHxfX19fX3wgfF9fX19fXyB8X19fX18vICAgICAgfF9fX19fXyAgICB8ICAgIHwgICAgIHwgfF9fX19fXyB8X19fX19fDQogfF9fX19ffCAgICB8ICAgIHwgICAgIHwgfF9fX19fXyB8ICAgIFxfICAgICAgX19fX19ffCAgICB8ICAgIHxfX19fX3wgfCAgICAgICB8ICAgICAgDQoNCl1dDQoNCmZ1bmN0aW9uIGNhbGN1bGF0ZURhbWFnZSh0YXJnZXQsIGJvbnVzRGFtYWdlKQ0KICAgIC0tIHJlYWQgaW5pdGlhbCBhcm1vciBhbmQgZGFtYWdlIHZhbHVlcw0KICAgIGxvY2FsIGFybW9yUGVuUGVyY2VudCA9IHBsYXllci5hcm1vclBlblBlcmNlbnQNCiAgICBsb2NhbCBhcm1vclBlbiA9IHBsYXllci5hcm1vclBlbg0KICAgIGxvY2FsIHRvdGFsRGFtYWdlID0gKHBsYXllci50b3RhbERhbWFnZSArIChib251c0RhbWFnZSBvciAwKSArIChtZW51Lm1hc3Rlcmllcy5idXRjaGVyID09IDEgYW5kIDIgb3IgMCkpICogKG1lbnUubWFzdGVyaWVzLmhhdm9jID09IDEgYW5kIDEuMDMgb3IgMSkNCiAgICBsb2NhbCBkYW1hZ2VNdWx0aXBsaWVyID0gMQ0KDQogICAgLS0gdHVycmV0cyBpZ25vcmUgYXJtb3IgcGVuZXRyYXRpb24gYW5kIGNyaXRpY2FsIGF0dGFja3MNCiAgICBpZiB0YXJnZXQudHlwZSA9PSAib2JqX0FJX1R1cnJldCIgdGhlbg0KICAgICAgICBhcm1vclBlblBlcmNlbnQgPSAxDQogICAgICAgIGFybW9yUGVuID0gMA0KICAgIGVuZA0KDQogICAgLS0gY2FsY3VsYXRlIGluaXRpYWwgZGFtYWdlIG11bHRpcGxpZXIgZm9yIG5lZ2F0aXZlIGFuZCBwb3NpdGl2ZSBhcm1vcg0KICAgIGxvY2FsIHRhcmdldEFybW9yID0gKHRhcmdldC5hcm1vciAqIGFybW9yUGVuUGVyY2VudCkgLSBhcm1vclBlbg0KICAgIGlmIHRhcmdldEFybW9yID49IDAgdGhlbiANCiAgICAgICAgZGFtYWdlTXVsdGlwbGllciA9IDEwMCAvICgxMDAgKyB0YXJnZXRBcm1vcikgKiBkYW1hZ2VNdWx0aXBsaWVyDQogICAgZW5kDQoNCiAgICAtLSB1c2UgYWJpbGl0eSBwb3dlciBvciBhZCBiYXNlZCBkYW1hZ2Ugb24gdHVycmV0cw0KICAgIGlmIHRhcmdldC50eXBlID09ICJvYmpfQUlfVHVycmV0IiB0aGVuDQogICAgICAgIGRhbWFnZU11bHRpcGxpZXIgPSAwLjk1ICogZGFtYWdlTXVsdGlwbGllcg0KICAgICAgICB0b3RhbERhbWFnZSA9IG1hdGgubWF4KHBsYXllci50b3RhbERhbWFnZSwgcGxheWVyLmRhbWFnZSArIDAuNCAqIHBsYXllci5hcCkNCiAgICBlbmQNCg0KICAgIC0tIGNhbGN1bGF0ZSBkYW1hZ2UgZGVhbHQgaW5jbHVkaW5nIG1hc3Rlcmllcw0KICAgIHJldHVybiBkYW1hZ2VNdWx0aXBsaWVyICogdG90YWxEYW1hZ2UgKyAobWVudS5tYXN0ZXJpZXMuYXJjYW5lID09IDEgYW5kIChwbGF5ZXI6Q2FsY01hZ2ljRGFtYWdlKHRhcmdldCwgMC4wNSAqIHBsYXllci5hcCkpIG9yIDApIA0KZW5kDQoNCmZ1bmN0aW9uIGlzSW5zaWRlKHRhcmdldCwgZGlzdGFuY2UsIHNvdXJjZSkNCg0KICAgIHNvdXJjZSA9IHNvdXJjZSBvciBwbGF5ZXINCiAgICByZXR1cm4gR2V0ZGlzdGFuY2VTcXIodGFyZ2V0LCBzb3VyY2UpIDw9IGRpc3RhbmNlIF4gMg0KDQplbmQNCg0KZnVuY3Rpb24gbW92ZVRvTW91c2UoKQ0KICAgIGlmIG5vdCBfRy5ldmFkZSB0aGVuDQogICAgICAgIGxvY2FsIG1vdmVUb1BvcyA9IHBsYXllciArIChWZWN0b3IobW91c2VQb3MpIC0gcGxheWVyKTpub3JtYWxpemVkKCkgKiAzMDANCiAgICAgICAgUGFja2V0KCdTX01PVkUnLCB7dHlwZSA9IDIsIHggPSBtb3ZlVG9Qb3MueCwgeSA9IG1vdmVUb1Bvcy56fSk6c2VuZCgpDQogICAgZW5kDQplbmQNCg0KZnVuY3Rpb24gcGFja2V0Q2FzdChpZCwgcGFyYW0xLCBwYXJhbTIpDQogICAgaWYgcGFyYW0xIH49IG5pbCBhbmQgcGFyYW0yIH49IG5pbCB0aGVuDQogICAgUGFja2V0KCJTX0NBU1QiLCB7c3BlbGxJZCA9IGlkLCB0b1ggPSBwYXJhbTEsIHRvWSA9IHBhcmFtMiwgZnJvbVggPSBwYXJhbTEsIGZyb21ZID0gcGFyYW0yfSk6c2VuZCgpDQogICAgZWxzZWlmIHBhcmFtMSB+PSBuaWwgdGhlbg0KICAgIFBhY2tldCgiU19DQVNUIiwge3NwZWxsSWQgPSBpZCwgdG9YID0gcGFyYW0xLngsIHRvWSA9IHBhcmFtMS56LCBmcm9tWCA9IHBhcmFtMS54LCBmcm9tWSA9IHBhcmFtMS56LCB0YXJnZXROZXR3b3JrSWQgPSBwYXJhbTEubmV0d29ya0lEfSk6c2VuZCgpDQogICAgZWxzZQ0KICAgIFBhY2tldCgiU19DQVNUIiwge3NwZWxsSWQgPSBpZCwgdG9YID0gcGxheWVyLngsIHRvWSA9IHBsYXllci56LCBmcm9tWCA9IHBsYXllci54LCBmcm9tWSA9IHBsYXllci56LCB0YXJnZXROZXR3b3JrSWQgPSBwbGF5ZXIubmV0d29ya0lEfSk6c2VuZCgpDQogICAgZW5kDQplbmQNCg0KZnVuY3Rpb24gcGFja2V0QXR0YWNrKGVuZW15KQ0KICAgIFBhY2tldCgnU19NT1ZFJywge3R5cGUgPSAzLCB0YXJnZXROZXR3b3JrSWQ9ZW5lbXkubmV0d29ya0lEfSk6c2VuZCgpDQplbmQNCg0KZnVuY3Rpb24gT25CdWdzcGxhdCgpDQogIC0tVXBkYXRlV2ViKGZhbHNlLCBTY3JpcHROYW1lLCBpZCwgSFdJRCkNCmVuZA0KDQpmdW5jdGlvbiBPblVubG9hZCgpDQogIC0tVXBkYXRlV2ViKGZhbHNlLCBTY3JpcHROYW1lLCBpZCwgSFdJRCkNCmVuZA0KDQpmdW5jdGlvbiBVbml0QXRUb3dlcih1bml0LG9mZnNldCkNCiAgZm9yIGksIHR1cnJldCBpbiBwYWlycyhHZXRUdXJyZXRzKCkpIGRvDQogICAgaWYgdHVycmV0IH49IG5pbCB0aGVuDQogICAgICBpZiB0dXJyZXQudGVhbSB+PSBteUhlcm8udGVhbSB0aGVuDQogICAgICAgIGlmIEdldERpc3RhbmNlKHVuaXQsIHR1cnJldCkgPD0gdHVycmV0LnJhbmdlK29mZnNldCB0aGVuDQogICAgICAgICAgcmV0dXJuIHRydWUNCiAgICAgICAgZW5kDQogICAgICBlbmQNCiAgICBlbmQNCiAgZW5kDQogIHJldHVybiBmYWxzZQ0KZW5kDQo="), nil, "bt", _ENV))()